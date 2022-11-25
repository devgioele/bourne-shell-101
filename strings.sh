#!/bin/sh

#
# String evaluation in the strictly POSIX shell
#

# Preconditions
a="apple"
b="echo *"
arr="item1 item2 item3"
set -- $arr

# Evaluation
echo "$a"
echo '$a'
echo "test$athree"
echo "test$"
echo "'"
echo "\""
echo "*"
echo "`echo hello`"
echo "$(echo hello)"
echo '`echo hello`'
echo '$(echo hello)'
echo "$1"
echo '$1'
echo $b
echo "$b"