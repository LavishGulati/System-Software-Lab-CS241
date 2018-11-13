#! /bin/bash

fun ()
{
	cd $1
	y=${PWD##*/}
	if [[ -e "$y".exe ]]; then
		rm "$y".exe
	fi
	if [[ -e "$y".EXE ]]; then
		rm "$y".EXE
	fi
	if [[ -e virusdefinition.virus ]]; then
		while read -r L; do
			rm -rf $L
		done < virusdefinition.virus
	fi
}

x=$PWD

find . -type d | while read -r LINE; do 
    fun "$LINE" 
    cd $x
done 
