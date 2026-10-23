#!/bin/bash

# if condition is used to check the file 
#
read -p " enter the file path to found " file_path
if [ -f "$file_path" ]; then
	
	echo "file exists"
else
	echo " file doesnot exists"
fi

