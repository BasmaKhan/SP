#!/bin/bash
a=$1
if [ $# -eq 0 ]
then
echo "You enter no arguement"
 else
   set `pidof $1`

 cd /proc/$1
#`cat status`
set `head status`

if [ $7=sleeping ]
then
	
	echo "Name:$a"
	echo "state:sleeping"
 shift 7
	echo "PID:$6"
	echo "PPID:$8"
else
echo "Name:$a"
	echo "state:running"
 shift 7
	echo "PID:$6"
	echo "PPID:$8"
	echo "running"
	
fi
 fi
