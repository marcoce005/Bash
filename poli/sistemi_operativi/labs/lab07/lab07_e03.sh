#!/usr/bin/bash

if [ $# -ne 1 ]
then
    echo "Must be $0 [directory]" >&2;
    exit 1;
fi

for e in $(find $1 -maxdepth 1)
do
    new_name=$(echo $e | tr A-Z a-z);
    mv -f "$e" "$new_name";
done