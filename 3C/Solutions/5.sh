num=$((1 + RANDOM%20))
echo "Guess the number(1-20):"
for i in 1 2 3; do
    read a
    if [ $a -lt $num ]; then
        echo Entered number is SMALLER
    elif [ $a -gt $num ]; then
        echo Entered number is BIGGER
    else
        echo Entered number is MATCHED
        break
    fi
done
echo The number is: $num
