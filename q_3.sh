n=$1
readarray -t arr <<< "$(ping -c $n google.com)"
echo ${arr[0]}
if [ $n -gt 0 ]
then
let "i=1"
while [ $i -le $n ]
do
echo $i".""${arr[$i]}"
((i++))
done
let "i=$(($n+1))"
while [ $i -lt $(($n+5)) ]
do
echo  "${arr[$i]}"
((i++))
done
fi
