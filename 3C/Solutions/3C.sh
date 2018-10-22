total=0
for i in $@; do
    if [[ $i -ge 10 && $i -le 20 ]]; then
        total=$(($total+$i))
    fi
done
echo Sum::$total
