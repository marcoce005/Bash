#!/bin/bash

echo "Insert a number:";
read number;

case "$number" in
	"13") echo "it's unlucky";;
	"17") echo "it's unlucky";;
	"69") echo "LMAO";;
	*) echo "normal number";;
esac

if [ `expr $number % 2` == 0 ];				# `expr` for insert a expression in condition
then
	echo "It's also even";
else
	echo "It's also odd";
fi
