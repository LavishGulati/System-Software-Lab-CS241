#! /bin/bash

if [ $# == 0 ]
then
	echo two arguments missing
elif [ $# -eq 1 ]
then
	echo one argument missing
else
	echo $(($1+$2))
fi