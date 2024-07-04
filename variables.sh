#!/bin/bash

# declaring
var1="Ciro";
var2=23;

echo $var1 $var2;

# we can unset a variable
unset var1;

echo $var1 $var2;

# exist also read-only variables
var3="pippo";
readonly var3;
echo $var3;         # we can print it but..
var3="ciao";        # we can't change is value
echo $var3

# VARIABLE TYPES

name="ciro";           # LOCAL variable--> it's temporary store within a shell script

        # shell variables
echo "$PWD";            # -->   stores the working directory
echo "$HOME";           # -->   stores user's name folder
echo "$SHELL";          # -->   stores the pathto the user's shell


# STORE a Display message

time=`date +%H`;        # store only the hours

user=`who`;
IFS=' ';        # set the splitter
read -a info <<< "$user";           # create an array of elements splitted with IFS

if [ $time -le 12 ];
then
    echo "Good morning ${info[0]}";
elif [ $time -le 18 ];
then
    echo "Good Afternoon ${info[0]}";
else
    echo "Good Evening ${info[0]}";
fi