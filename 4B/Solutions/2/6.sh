#!/bin/bash
ls $1 > temp.txt
grep '.jpeg' temp.txt > temp2.txt   
grep '.jpg' temp.txt > temp3.txt  
sed -i 's/.jpeg//g' temp2.txt
sed -i 's/.jpg//g' temp3.txt



while read line; do
	#statements
	 convert ./$1/"${line}.jpeg" ./pictures/"${line}.pdf"

done < temp2.txt 

while read line; do
	#statements
	 convert ./$1/"${line}.jpg" ./pictures/"${line}.pdf"

done < temp3.txt 
mogrify -resize 50% ./pictures/*.pdf


