#!/bin/bash

source_file="./bash_profile"
destination_file="/Users/$USER/.bash_profile"
backup_file="$destination_file_`eval date +%Y%m%d`"

if [ -f destination_file ]
	then
	echo "backing up old bash_profile"
	mv $destination_file $backup_file
fi

echo "installing new bash_profile"
ln $source_file $destination_file