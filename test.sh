#!/bin/bash

cmd=$1
argstring="$(printf '%s ' "${*:2}" | sed 's,^ *,,; s, *$,,')"

if command -v $1 >/dev/null; then
  eval "$cmd $argstring"
else
  echo "bad command"
fi
