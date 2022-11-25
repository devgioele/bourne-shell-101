#!/bin/sh

WORD="Tree Coffee Earth"

# If the following command returns with status code 0
# Notice that the boolean logic is inverted,
# the condition is satisfied on the value 0, instead
# of the traditional value 1
if echo "$WORD" | grep -q ".*thh.*"
then
  echo "Detected 'th' with regex"
fi

case "$WORD" in
  *coffee*)
    echo "Contains 'coffee'"
  ;;
  *Earth)
    echo "Ends with 'Earth'"
  ;;
  Earth*)
    echo "Starts with 'Earth'"
  ;;
  *Tree*)
    echo "Contains 'Tree'"
  ;;
esac