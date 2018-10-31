num=1
while [ $num -lt 1000 ];
do
    a=$((num/100))
    c=$((num%10))
    b=$(((num/10)%10))
    if [[ $((a**3 + b**3 + c**3)) -eq $num ]]; then
        echo $a^3 + $b^3 + $c^3 = $num
    fi
    num=$((num+1))
done
