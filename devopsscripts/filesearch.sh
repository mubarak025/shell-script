#!/bin/bash

read -p "enter the file path to found" file_path

if [  -f $file_path ]; then
	echo "file exist"
else
	echo "file is not exist"
fi

