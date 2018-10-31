echo "Enter the dimensions for marix sum (m*n)"
read m n

echo "Enter the elements of the first matrix"
for (( i=0; i<m; i++ ));
do
    read -a temp
    for (( j=0; j<n; j++ ));
    do
        A[$(($n*$i+$j))]=${temp[$j]}
    done
done

echo "Enter the elements of the second matrix"
for (( i=0; i<m; i++ ));
do
    read -a temp
    for (( j=0; j<n; j++ ));
    do
        B[$(($n*$i+$j))]=${temp[$j]}
        C[(($n*$i+$j))]=$((${A[$(($n*$i+$j))]}+${B[$(($n*$i+$j))]}))
    done
done

echo "Matrix sum of the matrices is"
for (( i=0; i<m; i++ ));
do
    for (( j=0; j<n; j++ ));
    do
        printf "%-3s" ${C[(($n*$i+$j))]}
    done
    printf "\n"
done
