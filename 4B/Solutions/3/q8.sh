ssconvert  marks.xlsx marks.csv
ssconvert grades.xlsx grades.csv

awk -F, '{getline f < "grades.csv" ; print $0","f}' OFS=, marks.csv > markd.csv
awk -F, '{$8="";$9=""}{print $1,$2,$3,$7,$10}' OFS=, markd.csv> marks.csv
rm markd.csv
