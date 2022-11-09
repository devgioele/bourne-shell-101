#!/bin/sh

echo "Received $# arguments."

echo "Arguments string: $*"

for ARG in $*
do
  echo "\$* ITEM: $ARG"
done

for ARG in "$*"
do
  echo "\"\$*\" ITEM: $ARG"
done

echo "Arguments vector: $@"

for ARG in $@
do
  echo "\$@ ITEM: $ARG"
done

for ARG in "$@"
do
  echo "\"\$@\" ITEM: $ARG"
done

# Shorthand of: for ARG in "$@"
for ARG
do
  echo "ARGUMENT: $ARG"
done