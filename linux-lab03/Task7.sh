#!/bin/bash

#variabe name stores current time in timestamp format as a string

name=$(date +%s)
echo "Generated name for your directory is "${name}

#if directory with that date as a name exists, exit with a message
if [ -e $name ]; then
  echo "Directory with this name already exists"
  exit 1

#otherwise make a directory with that name
else
   mkdir $name
   cd $name
   #iterate 10 times and make files called random1.dat up to random10.dat
   for N in {1..10}
   do
     touch random${N}.dat
     #save 50 random numbers to each file
     for i in {1..50}
     do
	    echo $RANDOM >> random${N}.dat
     done
   done
fi

exit 0
