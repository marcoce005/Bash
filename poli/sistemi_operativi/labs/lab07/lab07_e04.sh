#!/usr/bin/bash

if [ $# -ne 1 ]
then
    echo "Must be $0 [file_path]" >&2;
    exit 1;
fi

for e in $(cat $1 | tr " " "\n" | sort | uniq)
do 
    echo "$e $(grep $e < $1 | wc -l)"
done