#!/bin/bash

list=(1 7 5 1);		# array declaration	without commas

# make an array from a string

declare -a words=(Ciro va al mercato e compra 6 banane, che cosa ha? Il culo spanato.);

echo "nel primo array ci sono ${#list[@]} elementi";			# no know thw number of elements in an array it's used ${#array_name[@]}
echo "nel secondo ci sono ${#words[@]} elementi";

echo "the head of the arrays are: ${list[0]} and ${words[0]}";

for (( i=0; i<${#list[@]}; i++ ));
do
	echo "index $i value --> ${list[$i]}";
done

echo "print the list withut loops --> ${list[@]}";			# with ${array_neme[@]} we can visualize all the elements of the array. 


# Associative array

declare -A ASCII_dictionary=([65]="A" [66]="B" [67]="C");

echo "ASCII dictonary values --> ${ASCII_dictionary[@]}";			# print the values in reverse order always
echo "keys dictonary --> ${!ASCII_dictionary[@]}";					# print all keys of the dictonary always in revese

for key in "${!ASCII_dictionary[@]}";
do
	echo "${ASCII_dictionary[$key]} corrispond to $key";
done
