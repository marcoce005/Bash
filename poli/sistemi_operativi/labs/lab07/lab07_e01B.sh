#!/usr/bin/bash

if [ $# -ne 3 ]
then
    echo "Must be: $0 [directory] [function] [output_file]" >&2;
    exit 1;
fi


for file in $(find $1 -type f)
do
    occ=$(grep -n $2 $file);

    if [ "$occ" != "" ]
    then
        echo "$occ" | while read line
        do
            echo "$file:$line"
        done
    fi
done | sort -t ":" -k1,1 -k2,2n > $3