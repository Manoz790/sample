#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateinMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxRateinMonth 
&& $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalworkingDays++))
	 empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
			empHrs=8
			;;
			$isPartTime)
			empHrs=4
			;;
			*)
			   empHrs=0
		esac
	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalSalary=$(($totalEmpHr*$empRatePerHr))
