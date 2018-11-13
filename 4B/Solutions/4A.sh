awk -v avg=0 '/School1/ {avg += $2} END {avg /= 10.0; print "School1: " avg}' school_database.txt
awk -v avg=0 '/School2/ {avg += $2} END {avg /= 10.0; print "School2: " avg}' school_database.txt
awk -v avg=0 '/School3/ {avg += $2} END {avg /= 10.0; print "School3: " avg}' school_database.txt
awk -v avg=0 '/School4/ {avg += $2} END {avg /= 10.0; print "School4: " avg}' school_database.txt
