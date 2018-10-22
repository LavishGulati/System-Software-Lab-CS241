if [ $# == 0 ]; then
    echo "Both command line arguments are missing"
elif [ $# == 1 ]; then
    echo "One command line argument is missing"
else
    echo Sum of two numbers::$(($1+$2))
fi
