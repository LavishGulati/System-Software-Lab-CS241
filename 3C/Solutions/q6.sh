#! /bin/bash

read str
str2=$(echo $str | rev)
if [ "$str" == "$str2" ]
then 
	echo -n Yes
else
	echo -n No
fi
echo " "Length of string: $(echo -n $str | wc -m)