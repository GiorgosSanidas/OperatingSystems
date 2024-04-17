#!/bin/bash

new_name="$1"

if [ -z "$new_name" ]
then
  echo "Missing arguments"
  exit 1
elif [ ! -z "$2" ]
then
  echo "Extra arguments"
  exit 1
fi

latest_file=$(find . -type f -exec stat -c '%X %n' {} \; | sort -nr | awk 'NR==1 {print $2}')

if [ -f "$latest_file" ]
then
  echo "Copy the new file name"
  cp "$latest_file" "$new_name"
else
  echo "File not found"
fi
