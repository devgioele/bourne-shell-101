#!/bin/sh

fruits="Apple Banana Peach Ananas"
# Set the positional parameters (the passed arguments) to the expansion of `fruits`.
# This means that the passed arguments are overwritten with the items contained
# by `fruits`.
set -- $fruits
for FRUIT in "$@"
do
  echo FRUIT: $FRUIT
done

echo "##"

NAMES="Richard Stallman,Donald Knuth,Alan Turing"
# To have an array with elements that contain spaces,
# we switch the internal field separator (IFS) from the space char to another char of choice
OLD_IFS=$IFS
IFS=","
set -- $NAMES
for NAME in "$@"
do
  echo NAME: $NAME
done
# Reset the separator
IFS=$OLD_IFS