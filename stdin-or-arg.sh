#!/bin/sh

if [ "$1" = "--" ]; then
  read arg1
else
  arg1="$1"
fi

echo "Arg1: $arg1"
echo "Arg2: $2"
echo "Arg3: $3"
