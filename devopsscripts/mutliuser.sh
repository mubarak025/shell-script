#!/bin/bash

<<note
this script is used for loop function to create 
multipel user in the script

note


for i in  {1..5}
do

read -p "enter the username " user_name

sudo useradd -m $user_name
echo "user name added sussessfully"

done


