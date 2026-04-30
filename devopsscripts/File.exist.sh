#!/bin/bash

if [ $# -eq 0 ]
then
	echo " please pass the as an argument as file"
	echo " usage: ./file_exisists.sh <file_path>"
	exit 1
fi

if [ -f $1 ]
then 
	echo " file is exist"
else 
	echo "file is not exist"
fi


