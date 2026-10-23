#!/bin/bash

# this is script to install the package 
#
 read -p " Enter the package name " package_name

 echo " the package name is $package_name "


 if  dpkg -s $package_name > /dev/null  2>&1 ; then 

	 echo "$package_name alrady installled"
	 exit 1

	 
 else
	 echo "continuing installation ..."
 
 fi

 sudo apt-get update 

 sudo apt install $package_name -y 
 echo " the package $package_name is installed scuccessfuly"

 

 exit 1 


 read -p "enter the servicename" service_name

 sudo systemctl start $service_name

 sudo systemctl status $service_name 



 echo " the service $service_name is started successfully " 


