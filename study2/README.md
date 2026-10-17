# study2 - an olang front end for a subset of olang, written in olang

A rehearsal for the port: hand-written scanner, recursive descent + precedence climbing, AST of recursive enums, a
resolver. Built with /home/user/wt/study/build/out (master a3ed507), from this directory:

    /home/user/wt/study/build/out -b front.olang
    ./build/front -tokens FILE        tokens as "LINE TEXT", ";" for a statement end (the C tokenizer's format)
    ./build/front -kinds FILE         token kinds
    ./build/front -count FILES...     token counts and scan time
    ./build/front -parse FILES...     parse, errors, lookahead uses per site, unparsed if branches
    ./build/front -ast FILE           the tree as S-expressions
    ./build/front -resolve FILES...   load imports (std/, relative, the prelude), resolve names (OLANG_STD overrides std)

Files: scan.olang (scanner), ast.olang (tree), parse.olang (parser), dump.olang (printer), resolve.olang (resolver),
front.olang (driver). oracle/: tokdump.c and parsetime.c link the C compiler's token.c/syntax.c for comparison;
cmp.sh / kcmp.sh diff token streams and kinds against it. repro/: rNN reproducers of the findings. samples/tricky.olang:
one of every construct. data/: generated inputs (big.olang = shared.olang x10, deep*.olang nesting).
