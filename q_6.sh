#!/bin/bash
clear
echo "Enter A:"
read a
echo "Enter B:"
read b
if [ $a -ge $b ];
then
m=$b
m1=$a
fi
if [ $b -ge $a ];
then
m=$a
m1=$b
fi
#i=1
function gcd()
{
i=1
m1=$1
m=$2
while [ $i -le $m ]
	do
	gcdtemp=$(($m1%i))
gcdtemp1=$(($m%i))
	if [ $gcdtemp -eq 0 ];
	then
	if [ $gcdtemp1 -eq 0 ];
	then
	gcd=$i
	fi
	fi
((i++))
	done
	return $gcd
}
if [ $b -ge $a ]
then
gcd $b $a 
g=$?
fi
if [ $a -ge $a ]
then
gcd $a $b
g=$?
fi
	product=$(($a * $b))
lcm=$((product / g))
	echo "GCD:$g"
	echo "LCM:$lcm"


