#! /bin/bash

ls "$1" | grep -w "q7.sh"
ls -R "$1" | wc -l 
rm "$1"/*.c
find -size 0 | xargs rm