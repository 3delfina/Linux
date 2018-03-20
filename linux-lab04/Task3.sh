#!/bin/bash

directory_function(){

  #Checks if the directory already exists, if not, create one
  if [ ! -e ${1} ]; then
      echo "The directory ${1} doesn't exist, creating one and cd'ing into"
      mkdir ./${1}
  else 
      echo "The directory ${1} already exists"
  fi 
  
  #Moves into the directory
  cd ${1}
  echo "Moved into the directory $(pwd)"
}


