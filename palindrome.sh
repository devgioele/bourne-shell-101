#!/bin/bash

# For each argument
for ARG
do
  PALINDROME=true
  # Loop through the half of the string
  for (( i = 0; i < $(expr ${#ARG} / 2); i++ ))
  do
    # Compare character with its mirrored version for equality
    if [ "${ARG:i:1}" != "${ARG:${#ARG} - 1 - i:1}" ]
    then
      PALINDROME=false
      break
    fi
  done

  # Using a verbose if-else statement
  # if [ "$PALINDROME" = true ]
  # then
  #   echo "'$ARG' is a palindrome"
  # else
  #   echo "'$ARG' is not a palindrome"
  # fi
  
  # Using string interpolation and an if statement
  # echo "'$ARG' is$(if [ "$PALINDROME" = false ]; then; echo " not"; fi) a palindrome"
  
  # Using string interpolation and a logical operators
  echo "'$ARG' is$([ "$PALINDROME" = false ] && echo " not") a palindrome"
done
