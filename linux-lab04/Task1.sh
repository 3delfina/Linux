#!/bin/bash

for file in *
do
  #if a file has a zero size, add it to the list of empty files
	if [ ! -s $file ]; then
		empty+=($file)
   fi
done

#Check if the list of empty files is not empty
if [ ${#empty[@]} -eq 0 ]; then
    echo "There's no empty files in directory"
#Ask for confirmation to delete the empty files   
else 
	echo "Have found ${#empty[@]} empty files. Would you like to delete them? Y/N"
	read answer
	
 #If confirmed, iterate over empty files and delete them
	if [[ ("$answer" = "y") || ( "$answer" = "Y") ]]; then
		echo "Empty files were deleted."
		for file in  ${empty[@]}
		do
			rm $file
		done
	fi
	
fi
exit 0