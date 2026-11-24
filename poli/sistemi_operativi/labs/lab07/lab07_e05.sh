#!/usr/bin/bash

if [ $# -ne 2 ]
then
    echo "Must be: $0 [process_name] [time_interval]" >&2;
    exit 1;
fi

x=0;

while [ "$x" -lt 5 ]
do
    let x=x+1;
    
    status=$(ps -a -o pid,s,ucmd,cmd | grep "Z" | grep -v grep | grep $1);

    if [ "$status" == "" ]
    then
        echo "Process $1 is not in zombie mode."
        exit 0;
    else
        echo "Process $1 is in zombie mode. --> $status";
    fi

    sleep "$2";
done