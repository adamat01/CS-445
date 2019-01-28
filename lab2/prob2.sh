#!/bin/bash
set -u
ans=0
test=0
extra=0
MAX=2147483647
NextMax=0
NextMax=$(($MAX / 2))

#this script runs recursively
#it guesses a middle point then
#depending on if it is larger or small then the
#secret value it will calculate the new middle point
#and recursively search until it finds the value
#sadly i guess the search is too slow so it cant find the value

searchRandom()
{
if ((NextMax == 0)); then
	echo "Not Found"
	exit
fi
./prob2 "NextMax";
ans=$?

if ((ans == 1)); then
	NextMax=$(($NextMax / 2))
	#echo "$NextMax"
	searchRandom $NextMax
elif ((ans == 2)); then
	extra=$(($test / 2))
	NextMax=$(($test + $extra))
	#echo "$NextMax"
	searchRandom $NextMax
elif ((ans == 0)); then
	exit
fi
}
searchRandom 1