#! /bin/bash

i=1

for file in ./nature_images/*.{jpeg,jpg}
do
	convert $file ./nature_images/$i.pdf
	i=$((i+1))
done

rm ./nature_images/*.{jpg,jpeg}

mkdir ~/image
mv ./nature_images/*.pdf  ~/image/
du -h ~/image

for file in ~/image/*.pdf
do
	# convert -resize 50% $file $file
	mogrify -resize 25% $file
done

du -h ~/image

