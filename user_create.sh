#!/bin/bash

# this script can input for multiple users
#
for i in  {1 .. 5}
do


     read -p " enter the username " user_name

     sudo useradd -m $user_name
     
     echo " user $user_name added successfuly"


done




