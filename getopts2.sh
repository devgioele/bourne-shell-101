#!/bin/sh

PROGRAM="${0##*/}"

run_cmd1() {
	local opts qrcode=0 clip=0 force=0 characters="$CHARACTER_SET" inplace=0 pass
	opts="$(getopt -o nqcif -l no-symbols,qrcode,clip,in-place,force -n "$PROGRAM" -- "$@")"
	local err=$?
	eval set -- "$opts"
	while true; do case $1 in
		-n|--no-symbols) characters=1; echo "characters: $characters"; shift ;;
		-q|--qrcode) qrcode=1; echo "qrcode: $qrcode"; shift ;;
		-c|--clip) clip=1; echo "clip: $clip"; shift ;;
		-f|--force) force=1; echo "force: $force"; shift ;;
		-i|--in-place) inplace=1; echo "inplace: $inplace"; shift ;;
		--) shift; break ;;
	esac done
}

run_cmd1 "$@"
