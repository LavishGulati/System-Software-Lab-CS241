find ./$1/ -name "iitg.txt"
ls -1 | wc -l
rm *.c
find -maxdepth 1 -size 0 | xargs rm
