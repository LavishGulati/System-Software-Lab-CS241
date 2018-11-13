grep 'School1' school_database | awk -v count=0 '{count+=$2}END{print count/10}'
grep 'School2' school_database | awk -v count=0 '{count+=$2}END{print count/10}'
grep 'School3' school_database | awk -v count=0 '{count+=$2}END{print count/10}'
grep 'School4' school_database | awk -v count=0 '{count+=$2}END{print count/10}'

grep 'School1' school_database | awk -v count=0 -v x=1 '{if(x%2==0){count+=$2}}{x++}END{print count/5}'
grep 'School2' school_database | awk -v count=0 -v x=1 '{if(x%2==0){count+=$2}}{x++}END{print count/5}'
grep 'School3' school_database | awk -v count=0 -v x=1 '{if(x%2==0){count+=$2}}{x++}END{print count/5}'
grep 'School4' school_database | awk -v count=0 -v x=1 '{if(x%2==0){count+=$2}}{x++}END{print count/5}'

grep 'School1' school_database | awk -v count=0 -v x=1 '{if(x%2!=0){count+=$2}}{x++}END{print count/5}'
grep 'School2' school_database | awk -v count=0 -v x=1 '{if(x%2!=0){count+=$2}}{x++}END{print count/5}'
grep 'School3' school_database | awk -v count=0 -v x=1 '{if(x%2!=0){count+=$2}}{x++}END{print count/5}'
grep 'School4' school_database | awk -v count=0 -v x=1 '{if(x%2!=0){count+=$2}}{x++}END{print count/5}'
