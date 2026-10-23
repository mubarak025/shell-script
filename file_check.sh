#!/bin/bash

if [ $# -eq 0 ]
then
	echo "please pass the file as an argument"
	echo " usage: ./if_file_exisists.sh <file_path>"
	exit 1

fi



if [ -f $1 ]
then
	echo " the file is exitst"
else
	echo "file doesn't exist"
fi


