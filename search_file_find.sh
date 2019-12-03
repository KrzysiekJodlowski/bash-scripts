#!/bin/bash

findFile(){
  founded=$(find $1 -type f -name *$2*)
  if [ $founded != *$2* ]
  then
    echo File with \'$2\' in name not found!
  else
    for item in $founded
    do
      echo $item
    done
  fi
}

if [ $# -eq 1 ]
then
  findFile . $1
elif [ $# -eq 2 ]
then
  findFile $2 $1
else
  echo Provide proper amount of arguments!
fi

