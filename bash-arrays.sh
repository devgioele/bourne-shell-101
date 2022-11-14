#!/bin/bash

FRUITS=(Apple "Banana" Peach Ananas)

for FRUIT in ${FRUITS[*]}
do
  echo FRUIT: $FRUIT
done

echo ---

for FRUIT in ${!FRUITS[*]}
do
  echo FRUIT: $FRUIT
done

echo "##"

NAMES=("Richard Stallman" "Donald Knuth" "Alan Turing")
for (( i = 0; i < ${#NAMES[@]}; i++))
do
  echo "NAME: ${NAMES[$i]}"
done