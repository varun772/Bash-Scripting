#!/bin/bash
now="$(date)"
now="$(date +'%d/%m/%Y')"
echo "Enter name:"
read name
echo "Enter DOB:"
read date
if [ ${#date} -eq 7 ];
then
year=`echo $date | cut -d'-' -f2`
month=`echo $date | cut -d'-' -f1`
fi
if [ ${#date} -eq 6 ]
then
year=`echo $date | cut -d'-' -f2`
month=`echo $date | cut -d'-' -f1`
fi
if [ ${#date} -eq 5 ]
then
year=`echo $date | cut -d'-' -f2`
month=`echo $date | cut -d'-' -f1`
fi
if [ ${#date} -eq 4 ]
then
year=`echo $date | cut -d'-' -f2`
month=`echo $date | cut -d'-' -f1`
fi
if [ ${#now} -eq 10 ];
then
currentyear=${now:6:4}
currentmonth=${now:3:2}
fi
if [ "$currentmonth" -gt "$month" ];
then
m1=$(($currentmonth-$month))
m2=$(($currentyear - $year))
m3=$(($m2 * 12))
m=$(($m1 + $m3))
fi
if [ "$currentmonth" -le "$month" ];
then
m4=$(($month - $currentmonth))
m5=$(($currentyear - $year))
m6=$(($m5 * 12))
m7=$(($m6 - $m4))
#echo $m7
echo "Hello $name your age is $m7 months"
fi
