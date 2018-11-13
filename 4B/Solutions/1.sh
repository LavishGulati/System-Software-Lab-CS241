printf "%-10s%-10s%-10s%-10s\n" "Time" "Memory" "Disk" "CPU"

for ((i=0; i < 13; i++)); do
    time=$((i*5))
    cpu=$(top -bn1 | grep "Cpu(s)" | awk '{ print 100-$8 }')
    disk=$(df | awk -v used=0 -v total=0 'NR>1 {total += $2; used += $3} END {print (used*100.00)/total}')
    memory=$(free -t | grep Total | awk '{print ($3*100.00)/$2}')
    printf "%-10s%-10s%-10s%-10s\n" $time $memory $disk $cpu

    sleep 5
done
