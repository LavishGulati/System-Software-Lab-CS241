echo Enter two numbers:
read a
read b
echo Enter operation to be performed:
read op
case "$op" in
    "+")
        echo Sum::$(($a+$b))
        ;;
    "-")
        echo Difference::$(($a-$b))
        ;;
    "*")
        echo Product::$(($a*$b))
        ;;
    "/")
        echo Division::$(($a/$b))
        ;;
esac
