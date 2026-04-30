#!/bin/bash


read -p "enter the package name" Package_name

echo " checking if package is already installed "

if dpkg -s $package_name >/dev/null 2>&1 ; then
	echo "$package_name alerady installed"
	exit 1
else
	echo "coninuing installation"
fi

 
echo "installing the package"

sudo apt-get update 
sudo apt install $Package_name -y 

read -p "enter the servicename" service_name

sudo systemctl start $service_name
systemctl status $service_name


