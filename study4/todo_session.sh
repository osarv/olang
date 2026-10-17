#!/bin/bash
# todo_session.sh RUNNER... - a scripted session of todo commands, each run as RUNNER ARGS
set -u
F=$(mktemp -d)/list.json
r() { echo "\$ todo $*"; "$@" ; echo "  (status $?)"; }
T=("$@")
r "${T[@]}" -f $F add buy milk
r "${T[@]}" -f $F add write the -i study --verbose
r "${T[@]}" -f $F -v add "call bob, about the 'quote'"
r "${T[@]}" -f $F list
r "${T[@]}" -f $F done 2
r "${T[@]}" -f $F list
r "${T[@]}" -f $F -a list
r "${T[@]}" -n1 -f$F list
r "${T[@]}" -f $F rm 1
r "${T[@]}" -f $F rm 99
r "${T[@]}" -f $F --limit=x list
r "${T[@]}" -f $F --nope list
r "${T[@]}" -f $F frobnicate
r "${T[@]}" --help
echo "not json" > $F
r "${T[@]}" -f $F list
rm -rf $(dirname $F)
