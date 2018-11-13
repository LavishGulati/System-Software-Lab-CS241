cat auth.log | awk '{if($8=="opened" && $11=="sonal") {printf "%s",$3 >>"test.txt"}}{if($8=="closed" && $11=="sonal") {print " "$3 >> "test.txt"}}'
sed -i 's/:/ /g' test.txt 
a=$(awk '{sum=sum+($1*60*60+$2*60+$3)-($4*60*60+$5*60+$6)} END {print -1*sum}' test.txt )
echo $((24*60*60 - $a))
rm test.txt