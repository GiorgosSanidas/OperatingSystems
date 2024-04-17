#!/bin/bash

while :; do
  read -p "Give a number between 20 and 30: " number
  [[ "$number" =~ ^[0-9]+$ ]] || { echo "Give a number"; continue; }
  if ((number >= 20 && number <= 30)); then
    echo "Number $number is valid"
    break
  else
    echo "Something went wrong, please try again"
  fi
done
