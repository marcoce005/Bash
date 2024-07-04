#!/bin/bash

# 		== 	is the same of 		-eq
# 		>= 	is the same of 		-ge
# 		<= 	is the same of 		-le
# 		> 	is the same of 		-gt
# 		< 	is the same of 		-lt
# 		!= 	is the same of 		-ne

# 	it's used -n to test if the string is NOT NULL
# 	it's used -z to test if the string is NULL


if [ 10 -eq 10 ]; then
	echo "same";
fi

if [ "Ciro" == "ciro" ]; then
	echo "same";
else
	echo "not the same";
fi