#!/bin/bash

while :; do
  echo -e "\n1. date "
  echo "2. time"
  echo "3. username"
  echo "press E or e for exit"

  read value
  if [ "$value" = 1 ]
  then
    date +"%m-%d-%Y"
  elif [ "$value" = 2 ]
  then
    date +"%T"
  elif [ "$value" = 3 ]
  then
    echo "$USER"
  elif [ "$value" = "E" ] || [ "$value" = "e" ]
  then
    exit 0
  fi
done
