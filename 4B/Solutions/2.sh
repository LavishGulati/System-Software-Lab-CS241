while :
do
    isPlugged=$(lsblk | grep -c sd[b-z])
    if [ $isPlugged -eq 0 ]; then
        echo USB not plugged into the system
    else
        echo USB plugged into the system
    fi

    sleep 5
done
