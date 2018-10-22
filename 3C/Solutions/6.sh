echo Enter a string:
read s
if [[ $(rev <<< "$s") == $s ]]; then
    echo Yes. Length of the string: ${#s}
else
    echo No
fi
