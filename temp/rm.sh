#!/bin/bash

name1="Army"
name2="Navy"
name3="AirForce"

#Rm text files in the home directories of Army soldiers
for i in {1..50..1}
do
        rm /home/$name1$i/position_alloted.txt
        echo "rm $name1$i"
done

#Rm text files in the home directories of Navy sailors
for i in {1..50..1}
do
        rm /home/$name2$i/position_alloted.txt
        echo "rm $name2$i"

done

#Rem text files in the home directories of AirForce airmen
for i in {1..50..1}
do
        rm /home/$name3$i/position_alloted.txt
        echo "rm $name3$i"
done

~                               
