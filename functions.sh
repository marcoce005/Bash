#!/bin/bash

myFunc() {
	var = "mona"		# local variable
	echo "Ciro è un: $1";			# first variable passed to the function
}

myFunc "napoletano";		# variable passed to the function
myFunc "cinese";

echo "Ciro è un $var";		# var in not know in this scope
