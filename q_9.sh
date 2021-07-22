#!/bin/bash

a=$1
varr=()
m9=$((a/500))
if [ $m9 == 1 ];
then
	varr+=('D')
fi
m10=$((a%500))
m11=$((m10/10))
m12=$((m11/10))
if [ $m12 -ge 1 ];
then
	if [ $m12 == 4 ]
	then
		varr+=('CD')
	fi
	if [ $m12 != 4 ]
	then
		for((i=0; i<$m12; i++))
		do
			varr+=('C')
		done
	fi
fi
m13=$((m10%100))
m14=$((m13/10))

if [ $m14 == 9 ]
then
	varr+=('XC')
fi
if [ $m14 == 4 ]
then
	varr+=('XL')
fi
if [ $m14 != 4 -a $m14 != 9 ]
then
	if [ $m14 -gt 5 ]
	then
		varr+=('L')
		for((i=5; i<$m14; i++))
		do
			varr+=('X')
		done
	fi
	if [ $m14 -lt 5 ]
	then
		for((i=0; i<$m14; i++))
		do
			varr+=('X')
		done
	fi
fi
m13=$((m13%10))
if [ $m13 == 9 ]
then
	varr+=('IX')
fi
if [ $m13 == 8 ]
then
	varr+=('VIII')
fi
if [ $m13 == 7 ]
then
	varr+=('VII')
fi
if [ $m13 == 6 ]
then
	varr+=('VI')
fi
if [ $m13 == 5 ]
then
	varr+=('V')
fi
if [ $m13 == 4 ]
then
	varr+=('IV')
fi
if [ $m13 == 3 ]
then
	varr+=('III')
fi
if [ $m13 == 2 ]
then
	varr+=('II')
fi
if [ $m13 == 1 ]
then
	varr+=('I')
fi
printf %s "${varr[@]}" $''
