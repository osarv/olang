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
    char* description; //how a diagnostic names it; NULL: its pattern, in quotes
};

/* $& = any of the following (space separated literal alternatives)
 * $a = any number of the one thing that follows (can be made several with $&)
 * $d = digits
 * $l = letters including underscore
 * $c = any character
 * a rule with no $ is matched literally, char for char
 * indexed by enum value */
struct tokRule tokRules[] = {
    {TOK_NONE, "", "end of file"}, //description only used when TOK_NONE is EOF
    {TOK_BOOL_LIT, "$& true false", "a Bool literal"},
    {TOK_NULL_LIT, "null", NULL},
    {TOK_INT_LIT, "$a $d", "an integer literal"},
    {TOK_FLOAT_LIT, "$a $d . $a $d", "a float literal"},
    {TOK_CHAR_LIT, "' $c '", "a character literal"},
    {TOK_STR_LIT, "\" $a $c \"", "a string literal"},
    {TOK_IDEN, "$l $a $& $l $d", "a name"},
    {TOK_IF, "if", NULL},
    {TOK_ELSE, "else", NULL},
    {TOK_TRY, "try", NULL},
    {TOK_CATCH, "catch", NULL},
    {TOK_RET, "return", NULL},
    {TOK_JOIN, "join", NULL},
    {TOK_SPAWN, "spawn", NULL},
    {TOK_DEFER, "defer", NULL},
    {TOK_BREAK, "break", NULL},
    {TOK_CONTINUE, "continue", NULL},
    {TOK_ABORT, "abort", NULL},
    {TOK_UNREACHABLE, "unreachable", NULL},
    {TOK_EXTENDS, "extends", NULL},
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
    {TOK_INTERFACE, "trait", NULL},
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
    {TOK_STMNT_END, "", "end of line"}, //no literal form - only ever synthesized, see stmntEndTriggerType
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
    {TOK_ARROW, "=>", NULL},
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

struct tokenEdit { int idx; enum tokenType was; }; //a token split in two by the parser, and what it was

struct tokenContext {
    struct str fileName;
    struct list chars; //the file's bytes, then one '\0' marking the end - a NUL byte before it is the file's own
    int charIdx;
    int charLineNr;
    struct list tokens;
    int tokIdx;
    enum tokenType lastTokType; //for implicit statement-end synthesis, see stmntEndTriggerType
    bool sawNewline;            //for implicit statement-end synthesis, see stmntEndTriggerType
    char* lastTokEnd;           //L18: where the last token ended - a synthesized statement end is placed there,
    int lastTokLine;            //on the line it ends, not at the token that happens to come next
    bool reportedCR;            //L3: a carriage return is reported once per file, not once per line
    int tokStart;               //where the token being read began - what a malformed literal's error points at
    struct list edits;          //the splits made by TokenSplitShiftRight/Left, undone by TokenEditRewind
    int version;                //changes whenever the token list does - see TokenListVersion
    struct list brackets;       //L18a: the brackets open here, innermost last - '(' '[' '{' - see insideBrackets
};

//the byte at idx, or '\0' past the end - the cursor may step past the terminating '\0' and back
static char charAt(TokenCtx tc, int idx) {
    return idx >= 0 && idx < tc->chars.len ? *(char*)ListGetIdx(&tc->chars, idx) : '\0';
}

char feedChar(TokenCtx tc) {
    char c = charAt(tc, tc->charIdx);
    tc->charIdx++;
    if (c == '\n') tc->charLineNr++;
    return c;
}

void unfeedChar(TokenCtx tc) {
    tc->charIdx--;
    if (tc->charIdx < 0) ErrorBugFound();
    if (charAt(tc, tc->charIdx) == '\n') tc->charLineNr--;
}

//the bytes [idx, idx + len) of the file, as a token a lexical error can point at; idx is at or before the cursor
static struct token charSpan(TokenCtx tc, int idx, int len) {
    struct token t = {0};
    t.type = TOK_IDEN;
    t.str.ptr = (char*)tc->chars.ptr + idx;
    t.str.len = len;
    t.lineNr = tc->charLineNr;
    for (int i = idx; i < tc->charIdx; i++) if (charAt(tc, i) == '\n') t.lineNr--;
    t.owner = tc;
    t.tokId = -1;
    return t;
}

//the token being read, from its start to the cursor - or to the end of its line, which it may not cross
static struct token tokSoFar(TokenCtx tc) {
    int end = tc->charIdx;
    for (int i = tc->tokStart; i < end; i++) if (charAt(tc, i) == '\n') end = i;
    return charSpan(tc, tc->tokStart, end - tc->tokStart);
}

static char peekChar(TokenCtx tc, int ahead) {
    return charAt(tc, tc->charIdx + ahead);
}

//true when the cursor is at (or past) the end of the file - a NUL byte inside the file is not its end
static bool atEnd(TokenCtx tc) {
    return tc->charIdx >= tc->chars.len - 1;
}

//true when c, just fed, was the end of the file rather than a byte of it; the cursor is then put back on the end,
//so a scan that stops there leaves nothing consumed past it
static bool fedEnd(TokenCtx tc, char c) {
    if (c != '\0' || tc->charIdx - 1 < tc->chars.len - 1) return false;
    unfeedChar(tc);
    return true;
}

bool tryFeedChar(TokenCtx tc, char c) {
    if (atEnd(tc) || peekChar(tc, 0) != c) return false;
    feedChar(tc);
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
    if (stat(buffer, &st) == 0 && !S_ISREG(st.st_mode)) {
        ErrFatal(tc->fileName, S_ISDIR(st.st_mode) ? ERR_IS_DIRECTORY : ERR_NOT_REGULAR);
    }

    FILE* fp = fopen(buffer, "r");
    if (!fp) ErrFatal(tc->fileName, ERR_CANNOT_OPEN);

    int c;
    while ((c = fgetc(fp)) != EOF) ListAdd(&tc->chars, &c);
    if (ferror(fp)) ErrFatal(tc->fileName, ERR_CANNOT_OPEN); //e.g. a genuine I/O error mid-read
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

//consumes through the first of the chars in toFind, or to the end of the file. A NUL byte inside the file is
//only a byte here (a comment's text, a broken literal's rest) - the end of the file is the one place it stops
void feedUntilIncludingOneOfCharsOrEOF(TokenCtx tc, char* toFind) {
    while (true) {
        char c = feedChar(tc);
        if (fedEnd(tc, c)) return;
        if (c != '\0' && strchr(toFind, c)) return;
    }
}

//L4: a comment runs to the end of its line - or of the file, which ends it as well as a newline does
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
                    int open = tc->charIdx - 2;
                    while (true) {
                        char b = feedChar(tc);
                        if (fedEnd(tc, b)) {
                            ErrSyntax(charSpan(tc, open, 2), ERR_UNCLOSED_COMMENT);
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
            case '\0': if (fedEnd(tc, c)) return false; unfeedChar(tc); return true; //L1: a NUL byte is reported where it is
            default: unfeedChar(tc); return true;
        }
    }
}

void tokenizeEscapeChar(TokenCtx tc, bool inString) {
    char c = feedChar(tc);
    if (fedEnd(tc, c)) return; //the literal is unterminated, which its own loop reports
    if (c == 'n');
    else if (c == 't');
    else if (c == 'r');
    else if (c == '0'); //NUL - every C interop path needs one, and no other syntax produces a zero byte
    else if (c == '\\');
    else if (inString && c == '\"');
    else if (!inString && c == '\'');
    else ErrSyntax(charSpan(tc, tc->charIdx - 2, 2), ERR_BAD_ESCAPE, c);
}

bool tokenizeCharInStringLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    if (fedEnd(tc, c)) { //L14
        ErrSyntax(tokSoFar(tc), ERR_UNCLOSED_STRING);
        return true;
    }
    if (c == '\\') tokenizeEscapeChar(tc, true);
    else if (c == '\n') {
        ErrSyntax(tokSoFar(tc), ERR_STRING_NEWLINE);
        return true;
    }
    else if (c == '"') return true;
    return false;
}

void tokenizeCharLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    if (fedEnd(tc, c)) { ErrSyntax(tokSoFar(tc), ERR_UNCLOSED_CHAR); return; } //L13
    switch (c) {
        case '\n': ErrSyntax(tokSoFar(tc), ERR_CHAR_NEWLINE); return;
        case '\'': ErrSyntax(tokSoFar(tc), ERR_EMPTY_CHAR); return;
        case '\\': tokenizeEscapeChar(tc, false); break;
        default: break;
    }
    char close = feedChar(tc);
    if (close == '\'') return;
    if (fedEnd(tc, close)) { ErrSyntax(tokSoFar(tc), ERR_UNCLOSED_CHAR); return; }
    char* str = "'\n";
    feedUntilIncludingOneOfCharsOrEOF(tc, str);
    ErrSyntax(tokSoFar(tc), ERR_LONG_CHAR);
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
            ErrSyntax(charSpan(tc, tc->charIdx - 1, 1), ERR_DIGIT_SEPARATOR);
            continue; //reported; keep lexing so one bad literal does not derail the rest of the file
        }
        unfeedChar(tc);
        return nDigits;
    }
}

//a prefixed literal stops at the first character that is not one of its own digits, so "0b12" would
//otherwise lex as the binary 1 followed by a stray "2" and report something unrelated. A digit or letter
//sitting right after the run is always a mistake in the literal, and saying so there is far clearer.
void rejectTrailingRadixJunk(TokenCtx tc, enum diag d) {
    char c = feedChar(tc);
    unfeedChar(tc);
    if (isDigit(c) || isLetter(c)) ErrSyntax(charSpan(tc, tc->charIdx, 1), d, c);
}

enum tokenType tokenizeNumberLiteral(TokenCtx tc) {
    //tokenizeToken has already consumed the leading digit before dispatching here, so step back over it
    //to see what it was - a "0" may begin "0x" or "0b"
    unfeedChar(tc);
    char first = feedChar(tc);
    if (first == '0') {
        char prefix = feedChar(tc);
        if (prefix == 'x' || prefix == 'X') {           //L10a
            if (consumeDigitRun(tc, isHexDigit) == 0) ErrSyntax(tokSoFar(tc), ERR_HEX_NO_DIGITS);
            rejectTrailingRadixJunk(tc, ERR_HEX_DIGIT);
            return TOK_INT_LIT;
        }
        if (prefix == 'b' || prefix == 'B') {           //L10c
            if (consumeDigitRun(tc, isBinDigit) == 0) ErrSyntax(tokSoFar(tc), ERR_BIN_NO_DIGITS);
            rejectTrailingRadixJunk(tc, ERR_BIN_DIGIT);
            return TOK_INT_LIT;
        }
        unfeedChar(tc);
    }

    bool isFloat = false;
    consumeDigitRun(tc, isDigit);
    //L12: a "." before a name is not part of the number - it is a member access or a method call on the integer
    //("7.Hash()"); before anything else it begins the fraction, which must then have a digit
    char afterDot = peekChar(tc, 1);
    if (peekChar(tc, 0) == '.' && !isLetter(afterDot) && afterDot != '_') {
        feedChar(tc);
        if (consumeDigitRun(tc, isDigit) == 0) ErrSyntax(charSpan(tc, tc->charIdx - 1, 1), ERR_POINT_NO_DIGIT);
        isFloat = true;
        if (peekChar(tc, 0) == '.') ErrSyntax(charSpan(tc, tc->charIdx, 1), ERR_TWO_POINTS);
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

//true when the byte at the cursor begins a token, whitespace or a comment
static bool canStartToken(TokenCtx tc) {
    char c = peekChar(tc, 0);
    if (isIdentifierBodyChar(c) || c == '\'' || c == '"' || c == ' ' || c == '\t' || c == '\n' || c == '#') return true;
    for (int i = 0; i < N_TOK_RULES; i++) {
        char* pattern = tokRules[i].pattern;
        if (isPlainLiteralPattern(pattern) && !isLetter(pattern[0]) && tokPatternMatchLen(tc, tc->charIdx, pattern) > 0) return true;
    }
    return false;
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
        //L1/L3/L16: not the start of any token - reported once for a whole run of such bytes (a character outside
        //ASCII is several), and then dropped, so the parser reads on as though they were not there
        unsigned char c = (unsigned char)charAt(tc, startIdx);
        if (c == '\r') {
            if (!tc->reportedCR) ErrSyntax(charSpan(tc, startIdx, 1), ERR_CARRIAGE_RETURN);
            tc->reportedCR = true;
            return TOK_NONE;
        }
        while (!atEnd(tc) && !canStartToken(tc) && peekChar(tc, 0) != '\r') feedChar(tc);
        struct token run = charSpan(tc, startIdx, tc->charIdx - startIdx);
        if (c == '\0') ErrSyntax(run, ERR_NUL_BYTE);
        else if (c >= 0x80) ErrSyntax(run, ERR_NON_ASCII, (char)c);
        else ErrSyntax(run, ERR_UNKNOWN_CHAR, (char)c);
        return TOK_NONE;
    }
    for (int i = 1; i < bestLen; i++) feedChar(tc); //first char of the match was already fed by the caller
    return bestType;
}

struct token tokenizeToken(TokenCtx tc) {
    struct token tok;
    tok.str.ptr = (char*)tc->chars.ptr + tc->charIdx;
    tok.lineNr = tc->charLineNr;
    tc->tokStart = tc->charIdx;

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

//L18: placed where the statement it ends ends - just past its last token, on its line - so a diagnostic about a
//missing continuation points at the line that stopped short, not at whatever the next line holds
struct token synthesizeStmntEnd(TokenCtx tc) {
    struct token tok = {0};
    tok.type = TOK_STMNT_END;
    tok.str.ptr = tc->lastTokEnd;
    tok.lineNr = tc->lastTokLine;
    tok.owner = tc;
    tok.tokId = tokIdCtrCount();
    return tok;
}

//L18a: a newline inside parentheses or square brackets ends no statement - an argument list, an array literal or a
//parenthesized expression may run over several lines, its closing bracket on a line of its own - while a block opened
//inside them ("f(fn(x) {", a match used as a value) holds statements again
static bool insideBrackets(TokenCtx tc) {
    if (!tc->brackets.len) return false;
    char top = *(char*)ListGetIdx(&tc->brackets, tc->brackets.len - 1);
    return top == '(' || top == '[';
}

static void trackBracket(TokenCtx tc, enum tokenType t) {
    char open = t == TOK_PAREN_O ? '(' : t == TOK_SQUARE_O ? '[' : t == TOK_CURLY_O ? '{' : 0;
    if (open) { ListAdd(&tc->brackets, &open); return; }
    char want = t == TOK_PAREN_C ? '(' : t == TOK_SQUARE_C ? '[' : t == TOK_CURLY_C ? '{' : 0;
    if (!want || !tc->brackets.len) return;
    char* top = ListGetIdx(&tc->brackets, tc->brackets.len - 1);
    if (want != '{') { if (*top == want) tc->brackets.len--; return; } //a stray closer is the parser's to report
    //"}" closes its block, and with it any bracket left open inside it - one missing ")" is one error
    while (tc->brackets.len) {
        char c = *(char*)ListGetIdx(&tc->brackets, tc->brackets.len - 1);
        tc->brackets.len--;
        if (c == '{') break;
    }
}

//L18a: a declaration starting a line, with no block open, ends a bracket left open before it - a missing ")" in a
//global's initializer is one error, not one for every declaration after it. "fn" counts when a name follows it (a
//lambda or a method's receiver is "fn (")
static void closeBracketsBeforeDecl(TokenCtx tc, struct token tok) {
    if (!tc->brackets.len || tok.str.ptr == (char*)tc->chars.ptr || tok.str.ptr[-1] != '\n') return;
    for (int i = 0; i < tc->brackets.len; i++) if (*(char*)ListGetIdx(&tc->brackets, i) == '{') return;
    bool decl = tok.type == TOK_TYPE || tok.type == TOK_TEST || tok.type == TOK_IMPORT || tok.type == TOK_EXTERN;
    if (tok.type == TOK_FUNC) {
        int i = tc->charIdx;
        while (charAt(tc, i) == ' ' || charAt(tc, i) == '\t') i++;
        decl = isLetter(charAt(tc, i)) || charAt(tc, i) == '_';
    }
    if (decl) tc->brackets.len = 0;
}

void tokenizeTokensFromChars(TokenCtx tc) {
    while (!atEnd(tc)) {
        tc->sawNewline = false;
        if (!findNextTokStart(tc)) break;
        bool endHere = tc->sawNewline && stmntEndTriggerType(tc->lastTokType);
        struct token stmntEnd = endHere ? synthesizeStmntEnd(tc) : (struct token){0};

        struct token tok = tokenizeToken(tc);
        if (tok.type != TOK_NONE) closeBracketsBeforeDecl(tc, tok);
        if (endHere && !insideBrackets(tc)) ListAdd(&tc->tokens, &stmntEnd);
        if (tok.type == TOK_NONE) continue; //reported and dropped - see tokenizeOperator
        trackBracket(tc, tok.type);
        tc->lastTokType = tok.type;
        tc->lastTokEnd = tok.str.ptr + tok.str.len;
        tc->lastTokLine = tok.lineNr;
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
    tc->edits = ListInit(sizeof(struct tokenEdit));
    tc->brackets = ListInit(sizeof(char));
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

int TokenGetCharCount(TokenCtx tc) {
    return tc->chars.len;
}

int TokenGetCharCursor(TokenCtx tc) {
    return tc->charIdx;
}

int TokenGetLineNr(TokenCtx tc) {
    return tc->charLineNr;
}

//splits the token at the cursor in two, its first character becoming a token of type `first` and the rest one of
//type `rest`, leaving the cursor on the first; recorded, so TokenEditRewind can put it back
static void splitTokenAtCursor(TokenCtx tc, enum tokenType first, enum tokenType rest) {
    struct token* tok = ListGetIdx(&tc->tokens, tc->tokIdx);
    struct tokenEdit e = { tc->tokIdx, tok->type };
    ListAdd(&tc->edits, &e);
    struct token head = *tok;
    head.type = first;
    head.str.len = 1;
    struct token tail = *tok;
    tail.type = rest;
    tail.str.ptr = tok->str.ptr + 1;
    tail.str.len = tok->str.len - 1;
    tail.tokId = tokIdCtrCount();
    *tok = head;
    ListInsertIdx(&tc->tokens, tc->tokIdx + 1, &tail);
    tc->version++;
}

//">>" closing a nested type-argument list ("Vec<Vec<int32>>") lexes as one TOK_BTSFT_R, since maximal munch can't
//know it is two closers rather than a shift - and a declaration's "=" right after one ("x List<List<I32>>= v") makes it
//">>=", as a lone closer's makes ">=". If the token at the cursor is one of those, its first ">" is split off as a
//TOK_GRT of its own, the cursor left on it, and true returned - the fix C++11, Rust, Java and C# all make. Rewriting
//the stored token list rather than tracking a "half-consumed" cursor keeps every cursor save/restore in the parser
//correct; a parse that splits and then fails puts the token back with TokenEditRewind, so an expression read
//afterwards ("a < B >> c") still sees its shift.
bool TokenSplitShiftRight(TokenCtx tc) {
    if (tc->tokIdx >= tc->tokens.len) return false;
    enum tokenType t = ((struct token*)ListGetIdx(&tc->tokens, tc->tokIdx))->type;
    enum tokenType rest = t == TOK_BTSFT_R ? TOK_GRT : t == TOK_GRE ? TOK_ASS : t == TOK_ASS_BTSFT_R ? TOK_GRE : TOK_NONE;
    if (rest == TOK_NONE) return false;
    splitTokenAtCursor(tc, TOK_GRT, rest);
    return true;
}

//the opening counterpart: "List<<T>>" lexes its opening as one "<<" token, where a type-args list whose first item is
//a type variable needs "<" "<"
bool TokenSplitShiftLeft(TokenCtx tc) {
    if (tc->tokIdx >= tc->tokens.len) return false;
    if (((struct token*)ListGetIdx(&tc->tokens, tc->tokIdx))->type != TOK_BTSFT_L) return false;
    splitTokenAtCursor(tc, TOK_LST, TOK_LST);
    return true;
}

int TokenEditMark(TokenCtx tc) {
    return tc->edits.len;
}

//undoes every split made since mark, latest first - each pair of tokens joined back into the one it was
void TokenEditRewind(TokenCtx tc, int mark) {
    while (tc->edits.len > mark) {
        struct tokenEdit e = *(struct tokenEdit*)ListGetIdx(&tc->edits, tc->edits.len - 1);
        ListRemoveIdx(&tc->edits, tc->edits.len - 1);
        struct token* tok = ListGetIdx(&tc->tokens, e.idx);
        struct token* tail = ListGetIdx(&tc->tokens, e.idx + 1);
        tok->type = e.was;
        tok->str.len += tail->str.len;
        ListRemoveIdx(&tc->tokens, e.idx + 1);
        tc->version++;
    }
}

//changes whenever the token list does, so a position recorded under one version means nothing under another
int TokenListVersion(TokenCtx tc) {
    return tc->version;
}

int TokenGetCursor(TokenCtx tc) {
    return tc->tokIdx;
}

void TokenSetCursor(TokenCtx tc, int cursor) {
    tc->tokIdx = cursor;
}

//a token type as a diagnostic names it: "a name", "end of line", or the token itself in quotes ("')'")
char* TokenStrFromType(enum tokenType type) {
    static char* shown[N_TOK_RULES];
    if (tokRules[type].description) return tokRules[type].description;
    if (!shown[type]) shown[type] = StrFmt("'%s'", tokRules[type].pattern);
    return shown[type];
}

//the token just before t in its own file's stream, or a TOK_NONE token - only for diagnostics, so a scan is fine
struct token TokenBefore(struct token t) {
    TokenCtx tc = t.owner;
    if (!tc) return (struct token){0};
    for (int i = 1; i < tc->tokens.len; i++) {
        if (((struct token*)ListGetIdx(&tc->tokens, i))->tokId == t.tokId) return *(struct token*)ListGetIdx(&tc->tokens, i -1);
    }
    return (struct token){0};
}
