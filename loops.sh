#! /bin/bash

# while loop

cont=0
while (($cont < 3))
do
	echo $cont
	cont=$((cont + 1))
done

echo			# prendi 2 righe vuote nella CLI
echo

# untill loop
cont2=0
until (($cont2 == 5))		# esegui fino a quanto non si avvera [gira con in FALSE]
do
        echo $cont2
        cont2=$((cont2 + 1))
done

echo
echo

# for loop

for i in 1 11 57 3		# singoli elementi passati [possibilità di array]
do
	echo $i
done

echo

for i in {0..7}			# da n a m
do
	echo $i
done

echo

for i in {10..0..2}	#	{inizio..fine..incremento/decremento}
do
	echo $i
done

echo 

# canonical form
for (( i=0; i<5; i++ ))
do
	echo $i
done

echo
echo

#  break and continue

for i in {0..10}
do
	if (($i == 3 || $i == 5))
	then
		continue
	fi
	if (($i == 7))
	then
		break
	fi
	echo $i
done
