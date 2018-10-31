ls -l | awk 'NR>1 { printf "%-20s%s %-6s%-10s%-10s\n", $9, $6, $7, $8, $1 }'

echo
echo -n "Total no. of files: " | tee -a final_output.txt
numFile=$(ls -l | grep ^- | wc -l)
echo $numFile | tee -a final_output.txt

echo -n "Total no. of directories: " | tee -a final_output.txt
numDir=$(ls -l | grep ^d | wc -l)
echo $numDir | tee -a final_output.txt
