#!/bin/bash

#iterate over files in the current directory
#if one of them is a directory as well, it's not the end of the branch
#otherwise it is

for file in *
	do
	   if [ -d $file ]; then
		echo "This directory is not the end of the branch"
		exit 0
	   fi
	done

echo "This directory is the end of the branch"
exit 0
