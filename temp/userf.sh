#!/bin/bash
# Script to add a user to Linux system
#Four Groups have been created and officers of each service must be adhered to their respective groups

useradd -m ChiefCommander
useradd -m NavyMarshal
useradd -m ArmyGeneral
useradd -m AirForceChief

shopt -s expand_aliases

name1="Army"
name2="Navy"
name3="AirForce"

#Generating Army 1 to 50 users
for i in {1..50..1}
do
        useradd -m $name1$i
        echo "User $name1$i added"
done

#Generating Navy 1 to 50 users
for i in {1..50..1}
do
        useradd -m $name2$i
        echo "User $name2$i added"
done


#Generating AirForce 1 to 50 users
for i in {1..50..1}
do
        useradd -m $name3$i
        echo "User $name3$i added"
done

#Adding Chief to all other groups
usermod -a -G AirForceChief,ArmyGeneral,NavyMarshal ChiefCommander

~

