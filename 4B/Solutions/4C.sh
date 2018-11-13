awk -v avg=0 -v count=0 '/School1/ { count += 1; if(count%2 == 1) avg += $2} END {avg /= 5.0; print "School1: " avg}' school_database.txt
awk -v avg=0 -v count=0 '/School2/ { count += 1; if(count%2 == 1) avg += $2} END {avg /= 5.0; print "School2: " avg}' school_database.txt
awk -v avg=0 -v count=0 '/School3/ { count += 1; if(count%2 == 1) avg += $2} END {avg /= 5.0; print "School3: " avg}' school_database.txt
awk -v avg=0 -v count=0 '/School4/ { count += 1; if(count%2 == 1) avg += $2} END {avg /= 5.0; print "School4: " avg}' school_database.txt
