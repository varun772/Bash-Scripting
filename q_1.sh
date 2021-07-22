w=$1
c=$2
red='\033[0;31m'
blue='\033[0;34m'
yellow='\033[1;33'
readarray -t file <<< "$(df -x tmpfs | awk '{print $1}')"
readarray -t use <<< "$(df -x tmpfs | awk '{print $5}' | cut -d'%' -f1)"
b=${#use[@]}
i=1
#while [ $i -le $b ]
#do
#temp22=($(echo $use | cut -d'%' -f1))
#${use[$i]}=$temp22
#((i++))
#done
#i=0
while [ $i -lt $b ]
do
if (( $2 >= ${use[$i]} ))
then
if (( ${use[$i]} >= $1 ))
then
echo -e  "${yellow}WARNING"","${file[$i]}","${use[$i]}"%"
fi
fi
if (( ${use[$i]} >= $2 ))
then
echo  -e "${red}CRITICAL"","${file[$i]}","${use[$i]}"%"
fi
if (( $1 >= ${use[$i]} ))
then
echo  -e "${blue}OK"","${file[$i]}","${use[$i]}"%"
fi
((i++))
done
