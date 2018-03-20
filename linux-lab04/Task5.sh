#!/bin/bash

#function decodes a string using base64 and prints the result to the screen
process(){
  echo $1 | base64 -d
}

#Include the correct interpreter directive
cd data

#Check the number of arguments and exit with 1 if none are supplied.
if [ $# -eq 0 ]; then
	echo "No arguments were supplied"
	exit 1
else
	echo "$# arguments were passed"
fi

#Check that each argument is a file, exit with 2 if it is not.
for file in $@
do
  # Check if it's a regular file
  if [ ! -f $file ]; then
 	  echo "$file is not a file!"
    exit 2
	fi
done

#For each file, call the function process on the first and on the last line of the file.
for file in $@
do
  process $(head -1 $file)
  process $(tail -1 $file)
done
#exit with a successful status
exit 0
