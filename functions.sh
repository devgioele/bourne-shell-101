#!/bin/sh

call_me() {
  echo "> START OF FUNCTION 'call_me'"
  # Make any shell options changed inside the function confined to the function
  local -
  # Local variable confined to the functions scope
  local VAR1="value1"
  # VAR2 inherits the value of the variable VAR2 of the outer scope, if there is any
  local VAR2
  
  echo "VAR1=$VAR1"
  echo "VAR2=$VAR2"
  VAR2="value2"
  echo "VAR2=$VAR2"
  echo "$1 called me!"
  echo "> END OF FUNCTION 'call_me'"
  RESULT="apple"
}

VAR2="What a wonderful world"
call_me Hannes
echo "1=$1"
echo "VAR1=$VAR1"
echo "VAR2=$VAR2"
echo "RESULT=$RESULT"
