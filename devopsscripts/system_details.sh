#!/bin/bash
<<usage
create functions for system information
-ram usage
-storage usage 
-top processes

usage

check_memory(){
	free -h | awk 'NR==2{print $7}'
}
check_storage(){
	free -h | awk 'NR==2{print $4}'
}
check_highprocess(){
	ps aux --sort=-%mem | awk 'NR==2 {print $1,$2,$3,$4}'
}
echo "available memory"

check_memory
echo "available stoarge"
check_storage
echo "system processs"
check_highprocess
