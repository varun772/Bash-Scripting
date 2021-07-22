#!/bin/bash
echo "Please enter your SGPA:"
read v 
a=5 
num1=16
if (( $(echo "$a > $v" |bc -l) ));
then
    echo "PROBATION";
fi
if (( $(echo "($10 + $v) >= $16" |bc -l) ));
then
       n=$( echo "$num1-$v" | bc )
       echo "You need SGPA $n next sem"
fi
if (( $(echo "($10 + $v) < $16" |bc -l) ));
then
echo "AGLE SEM PHOD DENGE";
fi
