#!/bin/bash

name1="Army"
name2="Navy"
name3="AirForce"

#Creating text files for each troop chief

touch /home/ArmyGeneral/attendance_record
echo "ArmyGeneral record created"

touch /home/NavyMarshal/attendance_record
echo "NavyMarshal record created"

touch /home/AirForceChief/attendance_record
echo "AirForceChief record created"

count=0

while IFS= read -r line
do
	((count+=1))

	for i in {1..50..1}
	do
		if [[ "$line" == *"YES"* ] && [ "$line" == *"$name1$i"* ]]
		then
			echo "$line" >> /home/ArmyGeneral/attendance_record
			echo "$name1$i Entry done"
		
		elif [[ "$line" == *"YES"* ] && [ "$line" == *"$name2$i"* ]]
		then
			echo "$line" >> /home/NavyMarshal/attendance_record
			echo "$name2$i Entry done"

		elif [[ "$line" == *"YES"* ] && [ "$line" == *"$name3$i"* ]]
		then
			echo "$line" >> /home/AirForceChief/attendace_record
			echo "$name3$i Entry done"

		fi

	done

	if [[ $count == 150 ]]
	then 
		sleep 24h

	fi
done > attendance.log


