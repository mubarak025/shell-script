#!/bin/bash

<<readme

this is the script or backup with 5 dyas rotation 

usage: 
./backup.sh <path to your source> <path to backupfolder>

readme

function display_usage {

echo " usage: ./backup.sh <path to your source> <path to backupfolder>"

}

if [ $# -eq 0 ]; then
	display_usage

fi

source_dir=$1
timestamp=$(date '+%y-%m-%d-%H-%m-%s')
backup_dir=$2

function create_backup {
	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}"
	
	if [ $? -eq 0 ]; then 
		echo "backup generated sucsessfully for ${timestamp}"
	fi

}

function perforam_rotation {
	backup=($(ls -t  "${backup_dir}"/backup_*.zip 2>/dev/null))

	
	if [ "${#backup[@]}" -gt 5 ]; then

		echo "performing rotation for 5 days"

		backups_to_remove=("${backup[@]:5}")

		echo "${backups_to_remove[@]}"

		for backup in "${backups_to_remove[@]}";
		do
			rm -f ${backup}
		done

	fi

}
create_backup

perforam_rotation
