#!/bin/bash -x

isPartTime=1
isFullTime=2
totalsalary=0
emprateperhr=20
numOfworkingdays=20

for (( day=1; day<=$numOfworkingdays; day++ ))
do
	empcheck=$((RANDOM%3))
		case $empcheck in
			$isPartTime)
				emphrs=4
			;;
			$isFullTime)
				emphrs=8
			;;
			*)
			emphrs=0
			;;
		esac

	salary=$(($emphrs*$emprateperhr))
	totalsalary=$(($salary+$totalsalary))
done
