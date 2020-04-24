#!/bin/bash
#Setting permissions for directories to be accessed by Higher Auth.



name1="Army"
name2="Navy"
name3="AirForce"

#Setting permissions for the group Army wherin the ArmyChief and the 50 soldiers are present
for i in {1..50..1}
do
        chgrp -R ArmyGeneral /home/$name1$i  #all the files are directed to the ArmyGeneral
        chmod 770 /home/$name1$i
        echo "Permission set for $name1$i"
done

chmod 770 /home/ArmyGeneral

#Setting permissions for the group Navy wherin the NavyMarshal and the 50 sailors are present
for i in {1..50..1}
do
        chgrp -R NavyMarshal /home/$name2$i
        chmod 770 /home/$name2$i
        echo "Permission set for $name2$i"
done

chmod 770 /home/NavyMarshal

#Setting permissions for the group AirForce wherein the AirforceChief and the 50 airmen are present
for i in {1..50..1}
do
        chgrp -R AirForceChief /home/$name3$i
        chmod 770 /home/$name3$i
        echo "Permission set for $name3$i"
done

chmod 770 /home/AirForceChief

chmod 700 /home/ChiefCommander



echo "All Required permissions are set!!"

