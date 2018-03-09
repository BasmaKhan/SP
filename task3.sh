#!/bin/bash
showMeOwnwr()
{
num=$1
set `ls -l`

for i in `ls`
do
if [ -f $i -a $num=$5 ]
then
echo "$i"
fi
done

}
if [ $# -eq 0 ]
then
echo "you enter in no arguenment "
exit 1
fi


if [ $# -gt 1 ]
then
echo "you enter arguenment greater then 6 "
exit 1
fi
showMeOwnwr $1
