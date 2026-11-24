#!/usr/bin/bash

if [ $# -ne 3 ]
then
    echo "Must be: $0 [directory] [function] [output_file]" >&2;
    exit 1;
fi

find $1 -type f -exec sh -c '
grep -nH "$2" "$1"
' _ {} $2 \; | sort -t ":" -k1,1 -k2,2n > $3

# find $1 -type f -exec sh -c '
# file="$1";

# grep -q "$2" "$file";
# if [ "$?" -eq 0 ]
# then
#     occ=$(grep -n "$2" "$file" | awk "{print \"$file: \" \$0}");

#     echo "$occ";
# fi
# ' _ {} "$2" \; | sort -t ":" -k1,1 -k2,2n > $3