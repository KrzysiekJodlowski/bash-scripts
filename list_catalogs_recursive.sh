#!/bin/bash

getList(){
  current=$(ls -d $1/)
  if [ ${#current[@]} > 0 ]
  then
    for item in $current
    do
      echo /$item
      getList $item*
    done
  fi
}	

getList "*"
