#!/bin/bash

#files  - all .data files in the current directory
files=$(ls *.data)

for file in $files
do

	# Check if the .data file has a backup
	# Make a backup if it is not there
 
	if [ ! -e $file.bak ]; then
		echo "$file.bak was missing, creating one now"
    		cp $file $file.bak
	fi
done

exit 0
