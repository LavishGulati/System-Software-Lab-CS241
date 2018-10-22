#! /bin/bash

R=$(($RANDOM%20))
echo Random number generated is $R

for (( i=0 ; i<3 ; i++ )); do
	read var
	if [ $var -eq $R ]
	then
		echo Entered number is MATCHED
	elif [ $var -gt $R ]
	then
		echo Entered number is BIGGER
	else
		echo Entered number is SMALLER
	fi
done