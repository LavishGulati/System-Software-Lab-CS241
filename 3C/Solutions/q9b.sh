#! /bin/bash

awk '$1%2==1 && $2=="CS241" && $1>=17491011 && $1<=17491015 {print "Roll No:"$1" Subject:"$2} ' "$1"
