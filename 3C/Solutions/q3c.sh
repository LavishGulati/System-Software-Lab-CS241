# !/bin/bash

sm=0
for i in $@; do 
   	if [[ $i -ge 10 && $i -le 20 ]]; then
		sm=$(($sm+$i))
	fi
done
echo $sm
