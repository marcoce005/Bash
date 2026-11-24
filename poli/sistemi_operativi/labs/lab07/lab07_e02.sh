#!/usr/bin/bash

if [ $# -ne 1 ]
then
    echo "Must be $0 [file_path]" >&2;
    exit 1;
fi

max=0
while read row
do
    n=$(echo $row | wc -m)
    if [ "$n" -gt "$max" ]
    then
        max=$n;
    fi
done < $1

echo "Characters in the longest row --> $max"
echo "Lines in the file --> $(wc -l < "$1")"