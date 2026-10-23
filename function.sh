#!/bin/bash

create_user() {

read -p " enter the user name " username
read -p " enter the password " password 

if id   "$username" &>/dev/null; then
   echo " The user $username is exixts, exiting the code "
   exit 1
else
    echo " the  user $username does not exist, we will create it "
fi

sudo useradd -m $username -p  $password 

echo "user $username added successfully"

}

create_user
create_user


