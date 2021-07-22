#!/bin/bash
clear
arr=( "$@" )
b=${#arr[@]}
i=0
while [ $i -lt $b ];
do
j=0
while [ $j -lt $(($b-$i-1)) ];
do
if [ ${arr[$j]} -gt  ${arr[$(($j+1))]} ]
then
temp=${arr[$(($j+1))]}
arr[$(($j+1))]=${arr[$j]}
arr[$j]=$temp
	fi
((j++))
	done
((i++))
	done
echo -n "${arr[@]} "
