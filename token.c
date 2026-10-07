#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <sys/stat.h>
#include "token.h"
#include "util.h"
#include "errmsg.h"

struct tokRule {
    enum tokenType type;
    char* pattern;
    char* description; //NULL = same as pattern
};

/* $& = any of the following (space separated literal alternatives)
 * $a = any number of the one thing that follows (can be made several with $&)
 * $d = digits
 * $l = letters including underscore
 * $c = any character
 * a rule with no $ is matched literally, char for char
 * indexed by enum value */
struct tokRule tokRules[] = {
    {TOK_NONE, "", "EOF"}, //description only used when TOK_NONE is EOF
    {TOK_BOOL_LIT, "$& true false", "bool literal"},
    {TOK_NULL_LIT, "null", "null"},
    {TOK_INT_LIT, "$a $d", "int literal"},
    {TOK_FLOAT_LIT, "$a $d . $a $d", "float literal"},
    {TOK_CHAR_LIT, "' $c '", "char literal"},
    {TOK_STR_LIT, "\" $a $c \"", "string literal"},
    {TOK_IDEN, "$l $a $& $l $d", "identifier"},
    {TOK_IF, "if", NULL},
    {TOK_ELSE, "else", NULL},
    {TOK_TRY, "try", NULL},
    {TOK_CATCH, "catch", NULL},
    {TOK_RET, "return", NULL},
    {TOK_JOIN, "join", NULL},
    {TOK_SPAWN, "spawn", NULL},
    {TOK_BREAK, "break", NULL},
    {TOK_CONTINUE, "continue", NULL},
    {TOK_ABORT, "abort", NULL},
    {TOK_UNREACHABLE, "unreachable", NULL},
    {TOK_DONE, "done", NULL},
    {TOK_FAIL, "fail", NULL},
    {TOK_ASSERT, "assert", NULL},
    {TOK_FOR, "for", NULL},
    {TOK_DO, "do", NULL},
    {TOK_IN, "in", NULL},
    {TOK_IS, "is", NULL},
    {TOK_AS, "as", NULL},
    {TOK_RANGE, "range", NULL},
    {TOK_MATCH, "match", NULL},
    {TOK_CASE, "case", NULL},
    {TOK_NOMATCH, "nomatch", NULL},
    {TOK_TYPE, "type", NULL},
    {TOK_STRUCT, "struct", NULL},
    {TOK_CHOICE, "enum", NULL},
    {TOK_INTERFACE, "interface", NULL},
    {TOK_FUNC, "fn", NULL},
    {TOK_ERROR, "error", NULL},
    {TOK_MUT, "mut", NULL},
    {TOK_IMPORT, "import", NULL},
    {TOK_TEST, "test", NULL},
    {TOK_DESTRUCT, "destruct", NULL},
    {TOK_EXTERN, "extern", NULL},
    {TOK_DEFAULT, "default", NULL},
    {TOK_ADD, "+", NULL},
    {TOK_SUB, "-", NULL},
    {TOK_MUL, "*", NULL},
    {TOK_DIV, "/", NULL},
    {TOK_MOD, "%", NULL},
    {TOK_AT, "@", NULL},
    {TOK_COMMA, ",", NULL},
    {TOK_DOT, ".", NULL},
    {TOK_STMNT_END, "", "end of statement"}, //no literal form - only ever synthesized, see stmntEndTriggerType
    {TOK_QSNTMRK, "?", NULL},
    {TOK_ASS, "=", NULL},
    {TOK_COLON, ":", NULL},
    {TOK_ASS_INFER, ":=", NULL},
    {TOK_ASS_ADD, "+=", NULL},
    {TOK_ASS_SUB, "-=", NULL},
    {TOK_ASS_MUL, "*=", NULL},
    {TOK_ASS_DIV, "/=", NULL},
    {TOK_ASS_MOD, "%=", NULL},
    {TOK_ASS_BTSFT_L, "<<=", NULL},
    {TOK_ASS_BTSFT_R, ">>=", NULL},
    {TOK_ASS_BTWSE_AND, "&=", NULL},
    {TOK_ASS_BTWSE_OR, "|=", NULL},
    {TOK_ASS_BTWSE_XOR, "^=", NULL},
    {TOK_INC, "++", NULL},
    {TOK_DEC, "--", NULL},
    {TOK_EQ, "==", NULL},
    {TOK_NOT, "not", NULL},
    {TOK_NEQ, "!=", NULL},
    {TOK_AND, "and", NULL},
    {TOK_OR, "or", NULL},
    {TOK_XOR, "xor", NULL},
    {TOK_LST, "<", NULL},
    {TOK_LSE, "<=", NULL},
    {TOK_GRT, ">", NULL},
    {TOK_GRE, ">=", NULL},
    {TOK_BTWSE_AND, "&", NULL},
    {TOK_BTWSE_OR, "|", NULL},
    {TOK_BTWSE_XOR, "^", NULL},
    {TOK_BTWSE_INV, "~", NULL},
    {TOK_STR_OF, "$", NULL},
    {TOK_BTSFT_L, "<<", NULL},
    {TOK_BTSFT_R, ">>", NULL},
    {TOK_PAREN_O, "(", NULL},
    {TOK_PAREN_C, ")", NULL},
    {TOK_SQUARE_O, "[", NULL},
    {TOK_SQUARE_C, "]", NULL},
    {TOK_CURLY_O, "{", NULL},
    {TOK_CURLY_C, "}", NULL}
};

#define N_TOK_RULES ((int)(sizeof(tokRules) / sizeof(tokRules[0])))

static int tokIdCtr = 0;

int tokIdCtrCount() {
    return tokIdCtr++;
}

struct tokenContext {
    struct str fileName;
    struct list chars;
    int charIdx;
    int charLineNr;
    struct list tokens;
    int tokIdx;
    enum tokenType lastTokType; //for implicit statement-end synthesis, see stmntEndTriggerType
    bool sawNewline;            //for implicit statement-end synthesis, see stmntEndTriggerType
};

char feedChar(TokenCtx tc) {
    char c = *(char*)ListGetIdx(&tc->chars, tc->charIdx);
    tc->charIdx++;
    if (c == '\n') tc->charLineNr++;
    return c;
}

void unfeedChar(TokenCtx tc) {
    tc->charIdx--;
    if (tc->charIdx < 0) ErrorBugFound();
    if (*(char*)ListGetIdx(&tc->chars, tc->charIdx) == '\n') tc->charLineNr--;
}

bool tryFeedChar(TokenCtx tc, char c) {
    char fed = feedChar(tc);
    if (fed != c) {
        unfeedChar(tc);
        return false;
    }
    return true;
}

void readChars(TokenCtx tc) {
    char buffer[tc->fileName.len +1];
    StrToCStr(tc->fileName, buffer);

    //fopen()/fgetc() alone don't reject a directory - on Linux, opening one for reading succeeds and
    //fgetc() immediately returns EOF (indistinguishable, to the caller, from a genuinely empty file),
    //silently compiling it as an empty module instead of reporting a clear error. Reject anything that
    //isn't a plain file up front - but only once we know it exists at all (a stat() failure here, e.g.
    //ENOENT, is left to fopen()'s own check below, which reports the more accurate "unable to open").
    struct stat st;
    if (stat(buffer, &st) == 0 && !S_ISREG(st.st_mode)) ErrMsgNotARegularFile(tc->fileName);

    FILE* fp = fopen(buffer, "r");
    if (!fp) ErrMsgUnableToOpenFile(tc->fileName);

    int c;
    while ((c = fgetc(fp)) != EOF) ListAdd(&tc->chars, &c);
    if (ferror(fp)) ErrMsgUnableToOpenFile(tc->fileName); //e.g. a genuine I/O error mid-read
    c = '\0';
    ListAdd(&tc->chars, &c);
    tc->charLineNr = 1;
}

bool isLetter(char c) {
    if (c >= 'A' && c <= 'Z') return true;
    if (c >= 'a' && c <= 'z') return true;
    return false;
}

bool isDigit(char c) {
    if (c >= '0' && c <= '9') return true;
    return false;
}

bool isIdentifierBodyChar(char c) {
    if (isLetter(c)) return true;
    if (isDigit(c)) return true;
    if (c == '_') return true;
    return false;
}

void feedUntilIncludingOneOfCharsOrEOF(TokenCtx tc, char* toFind) {
    char c;
    bool run = true;
    while (run && (c = feedChar(tc)) != '\0') {
        for (int i = 0; i < (int)strlen(toFind); i++) {
            if (c == toFind[i]) run = false;
        }
    }
}

void discardComment(TokenCtx tc) {
    char* str = "\n";
    feedUntilIncludingOneOfCharsOrEOF(tc, str);
}

bool findNextTokStart(TokenCtx tc) {
    while (true) {
        char c = feedChar(tc);
        switch (c) {
            case '#':
                if (tryFeedChar(tc, '#')) { //L4a: "##" opens a block comment, closed by the next "##"
                    int line = tc->charLineNr;
                    while (true) {
                        char b = feedChar(tc);
                        if (b == '\0') {
                            ErrMsgUnexpectedChar(tc, UNTERMINATED_BLOCK_COMMENT);
                            return false;
                        }
                        if (b == '#' && tryFeedChar(tc, '#')) break;
                    }
                    //it stands for whitespace - and for a line break where it spans one (L18)
                    if (tc->charLineNr != line) tc->sawNewline = true;
                    break;
                }
                discardComment(tc); tc->sawNewline = true; break; //a comment runs to the end of its line
            case '\n': tc->sawNewline = true; break;
            case '\t': break;
            case ' ': break;
            case '\0': return false;
            default: unfeedChar(tc); return true;
        }
    }
}

void tokenizeEscapeChar(TokenCtx tc, bool inString) {
    char c = feedChar(tc);
    if (c == 'n');
    else if (c == 't');
    else if (c == 'r');
    else if (c == '0'); //NUL - every C interop path needs one, and no other syntax produces a zero byte
    else if (c == '\\');
    else if (inString && c == '\"');
    else if (!inString && c == '\'');
    else ErrMsgUnexpectedChar(tc, INVALID_ESCAPE_CHAR);
}

bool tokenizeCharInStringLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    if (c == '\\') tokenizeEscapeChar(tc, true);
    else if (c == '\n') {
        ErrMsgUnexpectedChar(tc, NEWLINE_BEFORE_CLOSING_OF_CHAR_LITERAL);
        return true;
    }
    else if (c == '"') return true;
    return false;
}

void tokenizeCharLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    switch (c) {
        case '\n': ErrMsgUnexpectedChar(tc, NEWLINE_BEFORE_CLOSING_OF_CHAR_LITERAL); return;
        case '\'': ErrMsgUnexpectedChar(tc, EMPTY_CHAR_LITERAL); return;
        case '\\': tokenizeEscapeChar(tc, false); break;
        default: break;
    }
    if (feedChar(tc) == '\'') return;
    ErrMsgUnexpectedChar(tc, EXPECTED_CLOSING_CHAR_LITERAL);
    char* str = "'\n";
    feedUntilIncludingOneOfCharsOrEOF(tc, str);
}

void tokenizeStringLiteral(TokenCtx tc) {
    while (!tokenizeCharInStringLiteral(tc));
}

//returns the char right after the next space in pattern, or NULL if pattern has no more parts
char* nextTokPatternPart(char* pattern) {
    for (int i = 0; pattern[i] != '\0'; i++) {
        if (pattern[i] == ' ') return pattern +i +1;
    }
    return NULL;
}

//true if word matches one of the literal alternatives described by pattern ($& ...), or the whole literal pattern itself
bool tokRuleMatchesWord(char* pattern, char* word, int wordLen) {
    if (pattern[0] == '$' && pattern[1] != '&') return false; //char-class rule, not a literal word
    if (pattern[0] == '$') pattern = nextTokPatternPart(pattern); //skip past "$&"

    while (pattern) {
        char* next = nextTokPatternPart(pattern);
        int partLen = next ? (int)(next - pattern -1) : (int)strlen(pattern);
        if (partLen == wordLen && !strncmp(pattern, word, wordLen)) return true;
        pattern = next;
    }
    return false;
}

enum tokenType tokenLookupWord(char* word, int wordLen) {
    for (int i = 0; i < N_TOK_RULES; i++) {
        if (tokRuleMatchesWord(tokRules[i].pattern, word, wordLen)) return tokRules[i].type;
    }
    return TOK_IDEN;
}

enum tokenType tokenizeIdentifier(TokenCtx tc) {
    char* start = (char*)tc->chars.ptr + tc->charIdx -1;
    while (isIdentifierBodyChar(feedChar(tc)));
    unfeedChar(tc);
    int len = (int)(((char*)tc->chars.ptr + tc->charIdx) - start);
    return tokenLookupWord(start, len);
}

bool isHexDigit(char c) {
    return isDigit(c) || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F');
}

bool isBinDigit(char c) {
    return c == '0' || c == '1';
}

//L10b: consumes a run of digits of one radix, allowing "_" separators between them, and returns how many
//real digits it saw. A separator must be followed by another digit of the same radix - so "1_000" is
//fine, while "1_", "1_.5" and "0x_FF" are not. A LEADING "_" never reaches here at all: it is a letter,
//so "_1" is an identifier, which is why the rule only has to talk about the other end.
int consumeDigitRun(TokenCtx tc, bool (*isRadixDigit)(char)) {
    int nDigits = 0;
    while (true) {
        char c = feedChar(tc);
        if (isRadixDigit(c)) { nDigits++; continue; }
        if (c == '_') {
            char next = feedChar(tc);
            unfeedChar(tc);
            if (isRadixDigit(next)) continue;
            ErrMsgUnexpectedChar(tc, NUMBER_SEPARATOR_PLACEMENT);
            continue; //reported; keep lexing so one bad literal does not derail the rest of the file
        }
        unfeedChar(tc);
        return nDigits;
    }
}

//a prefixed literal stops at the first character that is not one of its own digits, so "0b12" would
//otherwise lex as the binary 1 followed by a stray "2" and report something unrelated. A digit or letter
//sitting right after the run is always a mistake in the literal, and saying so there is far clearer.
void rejectTrailingRadixJunk(TokenCtx tc) {
    char c = feedChar(tc);
    unfeedChar(tc);
    if (isDigit(c) || isLetter(c)) ErrMsgUnexpectedChar(tc, RADIX_LITERAL_BAD_DIGIT);
}

enum tokenType tokenizeNumberLiteral(TokenCtx tc) {
    //tokenizeToken has already consumed the leading digit before dispatching here, so step back over it
    //to see what it was - a "0" may begin "0x" or "0b"
    unfeedChar(tc);
    char first = feedChar(tc);
    if (first == '0') {
        char prefix = feedChar(tc);
        if (prefix == 'x' || prefix == 'X') {           //L10a
            if (consumeDigitRun(tc, isHexDigit) == 0) ErrMsgUnexpectedChar(tc, HEX_LITERAL_NO_DIGITS);
            rejectTrailingRadixJunk(tc);
            return TOK_INT_LIT;
        }
        if (prefix == 'b' || prefix == 'B') {           //L10c
            if (consumeDigitRun(tc, isBinDigit) == 0) ErrMsgUnexpectedChar(tc, BIN_LITERAL_NO_DIGITS);
            rejectTrailingRadixJunk(tc);
            return TOK_INT_LIT;
        }
        unfeedChar(tc);
    }

    bool isFloat = false;
    consumeDigitRun(tc, isDigit);
    char c = feedChar(tc);
    if (c == '.') {
        if (consumeDigitRun(tc, isDigit) == 0) ErrMsgUnexpectedChar(tc, LAST_WAS_DECIMAL_POINT);
        isFloat = true;
        char after = feedChar(tc);
        unfeedChar(tc);
        if (after == '.') ErrMsgUnexpectedChar(tc, MULTIPLE_DECIMAL_POINTS);
    } else {
        unfeedChar(tc);
    }

    //L12a: an exponent - "e"/"E", an optional sign, then at least one digit. Committed to only if the
    //whole of it is there, so "1e" is still an int literal followed by an identifier and nothing that
    //parsed before this existed changed meaning. An exponent makes the literal a float with or without a
    //".", so "1e3" is one.
    int fed = 0;
    char e = feedChar(tc); fed++;
    if (e == 'e' || e == 'E') {
        char sign = feedChar(tc); fed++;
        if (sign != '+' && sign != '-') { unfeedChar(tc); fed--; }
        if (consumeDigitRun(tc, isDigit) > 0) return TOK_FLOAT_LIT;
    }
    while (fed-- > 0) unfeedChar(tc);
    return isFloat ? TOK_FLOAT_LIT : TOK_INT_LIT;
}

//returns the number of chars pattern matches starting at startIdx, or -1 if it doesn't match
int tokPatternMatchLen(TokenCtx tc, int startIdx, char* pattern) {
    int len = (int)strlen(pattern);
    for (int i = 0; i < len; i++) {
        if (startIdx +i >= tc->chars.len) return -1;
        if (*(char*)ListGetIdx(&tc->chars, startIdx +i) != pattern[i]) return -1;
    }
    return len;
}

bool isPlainLiteralPattern(char* pattern) {
    //"$" introduces a character class ("$a", "$d", "$l"), so a pattern starting with it is not a literal -
    //except a LONE "$", which is the E11a operator itself: every class carries a selector after the "$",
    //so one with nothing after it can only mean the character.
    if (pattern[0] == '$') return pattern[1] == '\0';
    return pattern[0] != '\0';
}

//matches the longest literal operator/punctuation rule starting at the char just fed
enum tokenType tokenizeOperator(TokenCtx tc) {
    int startIdx = tc->charIdx -1;
    enum tokenType bestType = TOK_NONE;
    int bestLen = 0;

    for (int i = 0; i < N_TOK_RULES; i++) {
        char* pattern = tokRules[i].pattern;
        if (!isPlainLiteralPattern(pattern)) continue;
        if (isLetter(pattern[0])) continue; //keywords are matched via tokenLookupWord

        int len = tokPatternMatchLen(tc, startIdx, pattern);
        if (len > bestLen) {
            bestLen = len;
            bestType = tokRules[i].type;
        }
    }

    if (bestLen == 0) {
        ErrMsgUnexpectedChar(tc, UNKNOWN_SYMBOL);
        return TOK_NONE;
    }
    for (int i = 1; i < bestLen; i++) feedChar(tc); //first char of the match was already fed by the caller
    return bestType;
}

struct token tokenizeToken(TokenCtx tc) {
    struct token tok;
    tok.str.ptr = (char*)tc->chars.ptr + tc->charIdx;
    tok.lineNr = tc->charLineNr;

    char c = feedChar(tc);
    if (isLetter(c) || c == '_') tok.type = tokenizeIdentifier(tc);
    else if (isDigit(c)) tok.type = tokenizeNumberLiteral(tc);
    else if (c == '\'') { tok.type = TOK_CHAR_LIT; tokenizeCharLiteral(tc); }
    else if (c == '"') { tok.type = TOK_STR_LIT; tokenizeStringLiteral(tc); }
    else tok.type = tokenizeOperator(tc);

    tok.str.len = (char*)tc->chars.ptr + tc->charIdx - tok.str.ptr;
    tok.owner = tc;
    tok.tokId = tokIdCtrCount();
    return tok;
}

/* Statements are never terminated by a character - there is no ';' in olang. Instead, a newline (or a
 * comment, which runs to one) right after a token that could legally end a statement implicitly closes
 * it, by synthesizing an invisible TOK_STMNT_END. This is exactly the set of tokens the grammar's own
 * TOK_STMNT_END positions can follow: literals/identifiers, ++/--, closing ')'/']', the bare
 * no-value forms of return/exit, and the "mut" closing a mutable bare-pun field. It deliberately excludes '}' - no rule in the grammar ever expects a
 * TOK_STMNT_END after one - so blocks, struct/choice bodies, and if/for/match never need it.
 * As with any such scheme (Go's automatic semicolon insertion works the same way), an operator meant to
 * continue an expression must stay at the end of the previous line, not the start of the next
 * (`1 +\n2` works, `1\n+ 2` does not). */
bool stmntEndTriggerType(enum tokenType type) {
    switch (type) {
        case TOK_IDEN: case TOK_INT_LIT: case TOK_FLOAT_LIT: case TOK_CHAR_LIT:
        case TOK_STR_LIT: case TOK_BOOL_LIT: case TOK_NULL_LIT:
        case TOK_INC: case TOK_DEC:
        case TOK_PAREN_C: case TOK_SQUARE_C:
        case TOK_RET: case TOK_DONE: case TOK_FAIL: case TOK_ERROR:
        case TOK_BREAK: case TOK_CONTINUE: case TOK_ABORT: case TOK_UNREACHABLE:
        case TOK_MUT: //a "mut" ending a line can only close a mutable bare-pun field ("x mut", C4)
            return true;
        default: return false;
    }
}

struct token synthesizeStmntEnd(TokenCtx tc) {
    struct token tok = {0};
    tok.type = TOK_STMNT_END;
    tok.str.ptr = (char*)tc->chars.ptr + tc->charIdx;
    tok.lineNr = tc->charLineNr;
    tok.owner = tc;
    tok.tokId = tokIdCtrCount();
    return tok;
}

void tokenizeTokensFromChars(TokenCtx tc) {
    while (*(char*)ListGetIdx(&tc->chars, tc->charIdx) != '\0') {
        tc->sawNewline = false;
        if (!findNextTokStart(tc)) break;
        if (tc->sawNewline && stmntEndTriggerType(tc->lastTokType)) {
            struct token stmntEnd = synthesizeStmntEnd(tc);
            ListAdd(&tc->tokens, &stmntEnd);
        }

        struct token tok = tokenizeToken(tc);
        tc->lastTokType = tok.type;
        ListAdd(&tc->tokens, &tok);
    }
    //the end of the file ends a statement exactly as a newline does. Without this a file whose last line is
    //a statement - a global declaration, say - with no newline-and-more-code after it failed to parse, since
    //the loop above only synthesizes the terminator when another token follows.
    if (stmntEndTriggerType(tc->lastTokType)) {
        struct token stmntEnd = synthesizeStmntEnd(tc);
        ListAdd(&tc->tokens, &stmntEnd);
    }
}

TokenCtx TokenizeFile(char* fileName) {
    TokenCtx tc = MallocOrCrash(sizeof(*tc));
    *tc = (struct tokenContext){0};
    tc->chars = ListInit(sizeof(char));
    tc->charIdx = 0;
    tc->charLineNr = 1;
    tc->tokens = ListInit(sizeof(struct token));
    tc->tokIdx = 0;
    tc->fileName = StrFromCStr(fileName);

    readChars(tc);
    tokenizeTokensFromChars(tc);
    return tc;
}

struct str TokenGetFileName(TokenCtx tc) {
    if (!tc) return (struct str){0};
    return tc->fileName;
}

struct token tokenEOF(TokenCtx tc) {
    struct token tok = {0};
    tok.type = TOK_NONE;
    tok.str.ptr = (char*)tc->chars.ptr + tc->chars.len -1;
    tok.str.len = 0;
    tok.lineNr = tc->charLineNr;
    tok.owner = tc;
    tok.tokId = tokIdCtrCount();
    return tok;
}

struct token TokenFeed(TokenCtx tc) {
    if (tc->tokIdx >= tc->tokens.len) return tokenEOF(tc);
    struct token* tokPtr = ListGetIdx(&tc->tokens, tc->tokIdx);
    tc->tokIdx++;
    return *tokPtr;
}

struct token TokenFeedUntil(TokenCtx tc, enum tokenType type) {
    struct token tok = TokenFeed(tc);
    while (tok.type != type && tok.type != TOK_NONE) tok = TokenFeed(tc);
    return tok;
}

void TokenFeedPast(TokenCtx tc, enum tokenType type) {
    TokenFeedUntil(tc, type);
}

void TokenUnfeed(TokenCtx tc) {
    if (tc->tokIdx <= 0) ErrorBugFound();
    tc->tokIdx--;
}

//where a token's text starts in its file. A token whose text was replaced by the parser (E31: an operator in a
//method's name position is renamed) no longer points into the file, and is located through the token it came from
static struct token tokenAsWritten(struct token tok) {
    char* base = (char*)tok.owner->chars.ptr;
    if (tok.str.ptr >= base && tok.str.ptr < base + tok.owner->chars.len) return tok;
    for (int i = 0; i < tok.owner->tokens.len; i++) {
        struct token* t = ListGetIdx(&tok.owner->tokens, i);
        if (t->tokId == tok.tokId) return *t;
    }
    return tok;
}

int TokenGetStrStart(struct token tok) {
    tok = tokenAsWritten(tok);
    return (int)(tok.str.ptr - (char*)tok.owner->chars.ptr);
}

int TokenGetStrLen(struct token tok) {
    return tokenAsWritten(tok).str.len;
}

int TokenGetLineStart(TokenCtx tc, int charIdx) {
    int i = charIdx -1;
    while (i >= 0 && *(char*)ListGetIdx(&tc->chars, i) != '\n') i--;
    return i;
}

int TokenGetLineEnd(TokenCtx tc, int charIdx) {
    int i = charIdx;
    while (i < tc->chars.len -1 && *(char*)ListGetIdx(&tc->chars, i) != '\n') i++;
    return i;
}

char TokenGetChar(TokenCtx tc, int charIdx) {
    if (charIdx < 0 || charIdx >= tc->chars.len) return '\0';
    return *(char*)ListGetIdx(&tc->chars, charIdx);
}

int TokenGetCharCursor(TokenCtx tc) {
    return tc->charIdx;
}

int TokenGetLineNr(TokenCtx tc) {
    return tc->charLineNr;
}

struct token TokenMerge(struct token head, struct token tail) {
    if (head.owner != tail.owner) ErrorBugFound();
    head.str.len = (int)(tail.str.ptr + tail.str.len - head.str.ptr);
    head.tokId = tokIdCtrCount();
    return head;
}

struct token TokenMergeFromListRange(struct list l, int start, int end) {
    if (start > end) ErrorBugFound();
    if (start < 0) ErrorBugFound();
    if (end > l.len) ErrorBugFound();
    struct token head = *(struct token*)ListGetIdx(&l, start);
    struct token tail = *(struct token*)ListGetIdx(&l, end -1);
    return TokenMerge(head, tail);
}

struct token TokenMergeFromList(struct list l) {
    struct token head = *(struct token*)ListGetIdx(&l, 0);
    struct token tail = *(struct token*)ListGetIdx(&l, l.len -1);
    return TokenMerge(head, tail);
}

//">>" closing a nested type-argument list ("Vec<Vec<int32>>") lexes as one TOK_BTSFT_R, since maximal
//munch can't know it is two closers rather than a shift. If the token at the cursor is one, rewrite it
//in place as two TOK_GRT tokens and return true, leaving the cursor on the first - the same fix C++11,
//Rust, Java and C# all make. Rewriting the stored token list rather than tracking a "half-consumed"
//cursor keeps every existing cursor save/restore in the parser correct with no changes: a restore to a
//point before the split simply re-reads the two ">"s, which parse identically to the original ">>"
//everywhere the parser could legitimately have been (a shift operator is never valid in a type
//position, and a type-argument list is never valid in an expression one).
bool TokenSplitShiftRight(TokenCtx tc) {
    if (tc->tokIdx >= tc->tokens.len) return false;
    struct token* tok = ListGetIdx(&tc->tokens, tc->tokIdx);
    if (tok->type != TOK_BTSFT_R) return false;
    struct token first = *tok;
    first.type = TOK_GRT;
    first.str.len = 1;
    struct token second = first;
    second.str.ptr = first.str.ptr + 1;
    second.tokId = tokIdCtrCount();
    *tok = first;
    ListInsertIdx(&tc->tokens, tc->tokIdx + 1, &second);
    return true;
}

//the opening counterpart: "List<<T>>" lexes its opening as one "<<" token, where a type-args list whose
//first item is a type variable needs "<" "<". Split only while trying that parse; TokenJoinShiftLeft puts
//it back if the parse fails, so "x << 2" is untouched however the parser got there.
bool TokenSplitShiftLeft(TokenCtx tc) {
    if (tc->tokIdx >= tc->tokens.len) return false;
    struct token* tok = ListGetIdx(&tc->tokens, tc->tokIdx);
    if (tok->type != TOK_BTSFT_L) return false;
    struct token first = *tok;
    first.type = TOK_LST;
    first.str.len = 1;
    struct token second = first;
    second.str.ptr = first.str.ptr + 1;
    second.tokId = tokIdCtrCount();
    *tok = first;
    ListInsertIdx(&tc->tokens, tc->tokIdx + 1, &second);
    return true;
}

void TokenJoinShiftLeft(TokenCtx tc, int idx) {
    struct token* tok = ListGetIdx(&tc->tokens, idx);
    tok->type = TOK_BTSFT_L;
    tok->str.len = 2;
    ListRemoveIdx(&tc->tokens, idx + 1);
}

int TokenGetCursor(TokenCtx tc) {
    return tc->tokIdx;
}

void TokenSetCursor(TokenCtx tc, int cursor) {
    tc->tokIdx = cursor;
}

char* TokenStrFromType(enum tokenType type) {
    return tokRules[type].description ? tokRules[type].description : tokRules[type].pattern;
}
