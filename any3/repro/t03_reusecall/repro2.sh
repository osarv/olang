#!/bin/bash
# t03 second part: the first build reaches none of user's defaults-calling functions; the second does
O=${1:?pass the compiler}
cd "$(dirname "$0")"
rm -rf build
cp main3.olang main.olang; $O build main.olang > /dev/null && ./build/main
cp main2.olang main.olang; OLANG_CHECKREUSE=1 $O build main.olang 2>&1 | head -2; ./build/main; echo "status $?"
cp main3.olang main.olang; $O build main.olang > /dev/null && ./build/main
