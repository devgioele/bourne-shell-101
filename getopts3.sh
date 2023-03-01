#!/bin/sh

PROGRAM="${0##*/}"

usage() {
  echo "Usage: $PROGRAM -o [output directory] files..."
  exit 1
}

while getopts o: f
do
  case $f in
    o) dirOutput="$OPTARG";;
    \?) usage;;
  esac
done
shift `expr $OPTIND - 1`

if [ -z "$dirOutput" ]
then
  usage
fi

echo "$dirOutput"

for file in "$1"
do
  echo "$file"
done
