#!/bin/bash
showTable()
{

num=$1 
num2=$2
num3=$3
num4=$4

num5=$5
if [ $# -eq 1 ]
then

for i in `seq 1 10`
do 
echo "$num * $i = `expr $num \* $i` "
i=`expr $i + 1`
done 
exit 0
fi

if [ $# -eq 3 -a $2 = -s ]
then

for i in `seq $3 10`
do
echo "$num * $i = `expr $num \* $i` "
#i=`expr $i + 1`
done 
exit 0

fi

if [ $# -eq 3 -a $2 = -e ]
then
for i in `seq 1 $num3`
do 
echo "$num * $i = `expr $num \* $i` "
#i=`expr $i + 1`
done 
exit 0
fi


if [ $# -eq 5 -a $2=-s -a $4=-e ]
then

for i in `seq $3 $5`
do 
echo "$num * $i = `expr $num \* $i` "
i=`expr $i + 1`
done 
exit 0
fi

if [ $# -eq 6 -a $2=-s -a $4=-e -a $6=-r ]
then
for i in `seq $3 $5`
do 
echo "$num * $i = `expr $num \* $i` "
i=`expr $i + 1`
done

echo "reverse is :"
while [ $num5 -ge $num3 ] 
do
echo "$num * $num5 = `expr $num \* $num5` "
num5=`expr $num5 - 1`
done

exit 0
fi

}


if [ $# -eq 0 ]
then
echo "you enter in no arguenment "
exit 1
fi


if [ $# -gt 6 ]
then
echo "you enter arguenment greater then 6 "
exit 1
fi
start=$1
second=$2
end=$3
second1=$4
end1=$5
r=$6
showTable $start $second $end $second1 $end1 $6




