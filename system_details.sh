#!/bin/bash

check_memory() { 
	free -h | awk 'NR==2{print $7}'
}

check_storage() {
	df -h | awk ' NR==2{print $4}'
}

check_process() {
	ps aux --sort=-%mem | awk ' NR==2 {print $1,$2,$4}'
}

show_details() {
	echo "===== SYSTEM DETAILS ======"
	echo " avilable memory "
	check_memory
	echo " available storage"
	check_storage
	echo " high process"
	check_process
}

show_details



