#!/bin/bash
keymap_file="/Users/$USER/Library/Application Support/KeyRemap4MacBook/private.xml"
backup_file="/Users/$USER/Library/Application Support/KeyRemap4MacBook/private.xml_`eval date +%Y%m%d`"
replacement_file="./private.xml"

if [ -f $replacement_file ]
	then
	echo "backing up original config file to $backup_file"
	cp $keymap_file $backup_file
	echo "installing new config file"
	ln $replacement_file $keymap_file
else
	echo "please run install.sh in the same dir as private.xml"
fi
