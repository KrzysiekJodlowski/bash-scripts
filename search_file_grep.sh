#!/bin/bash

findFile(){
  echo grep -rnw $1 -e *$2*
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

