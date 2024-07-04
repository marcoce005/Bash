#!/bin/bash

echo "Enter your name: ";
read name;				# take input from CLI

if [ "$name"  = "ciro" ] || [ "$name" = "Ciro" ];		# string compare
then
	echo "Sei un napoletano";
elif [ "$name" = "Andrei" ] || [ "$name" = "andrei" ];				# logical operator want the condition saperated in []
then
	echo "rubi il rame";
fi
