#!/bin/bash

#create a file called random

touch random 

#generate 100 numbers and store them in the file
for i in {1..100}
do
	echo $RANDOM >> random
done

exit 0
