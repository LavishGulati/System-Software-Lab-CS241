# !/bin/bash

echo "Enter 2 numbers and the operator"
read var1 var2 op1

case $op1 in
"+") echo $((var1+var2));;
"-") echo $((var1-var2));;
"*") echo "scale=2; $var1*$var2" | bc;;
"/") echo "$var1/$var2" | bc;;
esac
