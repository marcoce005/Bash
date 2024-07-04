#!/bin/bash

string="ciro";
echo "the word ${string} has ${#string} characters";			# ${#name_value}		to print the lenght of a string

# string CONCATENATION
word="ciao";

hello=$word" "$string;     # or ${value1}${value2} or "$value1""$value2"
                        # it's possible also mix it
echo $hello;

# SUBSTRING

text="C'era una volta tanto tempo fa in una galassia lontana lontana...";
# ${string:position}    --> return a substring starting at the position
# ${string:position:lenght}     --> return a substrign starting at the position and print only the number of charatchers indicated
echo ${text:5};
echo ${text:15:15}