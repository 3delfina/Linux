#!/bin/bash
for file in *
	do
	   if [ -d $file ]; then
		echo "This directory is not the end of the branch"
		exit 0
	   fi
	done

echo "This directory is the end of the branch"
exit 0
