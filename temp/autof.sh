#!/bin/bash

name1="Army"
name2="Navy"
name3="AirForce"

#Creating blank text files in the home directories of Army soldiers
for i in {1..50..1}
do
        touch /home/$name1$i/position_alloted.txt
        echo "Time User Lat Long" >> /home/$name1$i/position_alloted.txt
        echo "$name1$i column written" 
done

#Creating blank text files in the home directories of Navy sailors
for i in {1..50..1}
do
        touch /home/$name2$i/position_alloted.txt
        echo "Time User Lat Long" >> /home/$name2$i/position_alloted.txt
        echo "$name2$i column written"
done

#Creating blank text files in the home directories of AirForce airmen
for i in {1..50..1}
do
        touch /home/$name3$i/position_alloted.txt
        echo "Time User Lat Long" >> /home/$name3$i/position_alloted.txt
        echo "$name3$i column written"

done

count=0

while IFS= read -r line
do


        ((count+=1))

        for i in {1..50..1}
        do
                if [[ "$line" == *" $name1$i "* ]]
                then
                        echo "$line" >> /home/$name1$i/position_alloted.txt
                        echo "$name1$i : Column written"


                elif [[ "$line" == *" $name2$i "* ]]
                then
                        echo "$line" >> /home/$name2$i/position_alloted.txt
                        echo "$name2$i : Column written"


                elif [[ "$line" == *" $name3$i "* ]]
                then
                        echo "$line" >> /home/$name3$i/position_alloted.txt
                        echo "$name3$i : Column written"

                fi
         done

        if [Untitled Document[ $count == 150 ]]
        then
                sleep 24h
        fi

done < position.log

                                                                            1,11          Top

