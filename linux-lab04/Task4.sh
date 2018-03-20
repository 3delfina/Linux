#!/bin/bash

checking_function(){
  #iterating over all of the parameters passed to the function
  for file in $@
  do

	  # Check if the file is a directory
	  if [ -d $file ]; then
		  echo "$file is a directory."

	  # Check if it's a regular file
	  elif [ -f $file ]; then
	  	echo "$file is a regular file."

	  # It's neither of the above
	  else
	  	echo "$file isn't a file or directory. It does not exist!"
	  fi
  done
}



