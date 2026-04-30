#!/bin/bash

create_user(){
        read -p "eneter the username" username
        read -p " enter the password" password


        if id "$username" &>/dev/null; then
                echo "the user $username exist"
                exit 1
        else
                echo " the user $username will be created "

        fi

        sudo useradd -m $username -p $password
        echo "user $username added succesfully"

}
create_user

