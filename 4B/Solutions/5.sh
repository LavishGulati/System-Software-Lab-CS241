abc=$(echo {a..z} | tr -d ' ')
abcr=$(echo {a..z} | tr -d ' ' | rev)
ABC=$(echo {A..Z} | tr -d ' ')
ABCr=$(echo {A..Z} | tr -d ' ' | rev)
num=$(echo {0..9} | tr -d ' ')
numr=$(echo {0..9} | tr -d ' ' | rev)

while :
do
    echo "Enter one of the options: Encode, Decode or Exit"
    read choice

    if [[ $choice == "Encode" ]] || [[ $choice == "Decode" ]]; then
        echo Enter the name of the file
        read filename

        echo
        cat $filename | tr "$abc" "$abcr" | tr "$ABC" "$ABCr" | tr "$num" "$numr"
        echo

    else
        if [[ $choice != "Exit" ]]; then
            echo Invalid Input
        fi
        break
    fi

done
