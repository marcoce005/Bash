#!/bin/bash

# syntax
#           bash script.sh [./script.sh] arg1 arg2 arg3 ....

arguments=("$@");         # catch all arguments pass to the script
# is possible also use "$*"

n_arguments="$#";           # the number of arguments

echo "number of arguments: ${n_arguments}";

# to stamp all the arguments we have to iterate the array using the lenght

for ((i=0; i<n_arguments; i++))
do
    echo ${arguments[i]}
done


# other info about arguments and script

echo "The process ID is: $$";           # $$ to print the process ID
echo "The exit status of the last command is $?"            # $? to print the last command exit status
echo "name of scripts: $0";         # $0, $1, $2 are arguments
