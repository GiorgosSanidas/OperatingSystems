#!/bin/bash

user="$1"

if [ -z "$user" ]
then
  echo "Missing arguments"
  exit 1
fi

found_user=$(grep "$user" /etc/passwd | cut -d ":" -f1)

if [ -z "$found_user" ]
then
      echo "User not found"
else
      echo "User $found_user found"
fi
