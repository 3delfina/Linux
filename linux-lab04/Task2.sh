#!/bin/bash

#iterate over lines in the help-read.txt
cat help-read.txt | while read line
do  
  #print word count for each line
	echo $line | wc -w
done

exit 0
