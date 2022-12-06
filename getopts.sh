#! /bin/sh -
PROGNAME=$0

usage() {
  cat << EOF >&2
Usage: $PROGNAME [-v] [-d <dir>] [-f <file>]

-f <file>: ...
 -d <dir>: ...
       -v: ...
EOF
  exit 1
}

dir=default_dir file=default_file verbose_level=0
while getopts d:f:v o; do
  case $o in
    (f) file=$OPTARG;;
    (d) dir=$OPTARG;;
    (v) verbose_level=$((verbose_level + 1));;
    (*) usage
  esac
done
shift "$((OPTIND - 1))"

echo Remaining arguments: "$@"
