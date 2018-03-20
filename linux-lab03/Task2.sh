#!/bin/bash

#check if directories exist before making them
#if directory exists, exit with an error code and a message
if [ -e data ]; then
	echo "The directory data already exists"
	exit 1
else 
	mkdir ./data/
fi
	
if [ -e data/processed ]; then
	echo "The directory data/processed already exists"
	exit 2
else 
	mkdir ./data/processed/
fi


if [ -e docs ]; then
	echo "The directory docs already exists"
	exit 3
else 
	mkdir ./docs/
fi


echo "All directories: data, data/processed, docs were created"
exit 0
