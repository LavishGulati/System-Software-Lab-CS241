echo Enter two numbers:
read a
read b
echo Enter operation to be performed:
read op
case "$op" in
    "+") echo "scale=3; $a+$b" | bc;;
    "-") echo "scale=3; $a-$b" | bc;;
    "*") echo "scale=3; $a*$b" | bc;;
    "/") echo "scale=3; $a/$b" | bc;;
esac
