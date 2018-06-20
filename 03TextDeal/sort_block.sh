#!/bin/sh

if [ $# -lt 1 ];then
    echo "./sort_block.sh <filename> [separate]"
    exit 1
elif [ $# -eq 1 ];then
    filename=$1
    sep=";"
else
    filename=$1
    sep=$2
fi

cat $filename |
    awk -v RS="" -v FS=$sep '{ gsub("\n", FS); print }'|
        sort -f |
	    awk -v ORS="\n\n" -v FS=$sep '{ gsub(FS, "\n"); print }' |
	        grep -v '# SORTKEY'
