#! /bin/bash

count=7			# no spazio
				# le variabili si scrivono con $ prima
if (($count == 10))		# se contatore == 10
then
	echo "Fa dieci"
elif (($count > 10))		# else if
then
	echo "viva Ciro"
else
	echo "php merda"
fi				# terminatore del blocco condizionale


# operatori logici

age=-1

if (($age < 18)) && (($age > 0))	# and logico &&
then
	echo "sei minnorenne"
elif (($age >= 18))
then
	echo "sei maggiorenne"
else
	echo "non sei nulla"
fi


digit=7

if (($digit == 0)) || (($digit == 1))
then
	echo "correct digit"
else
	echo "vai in mona, only binary"
fi
