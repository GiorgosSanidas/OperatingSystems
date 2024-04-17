#!/bin/bash

f_file="$1"

if [ -z "$f_file" ]
then
  echo "Missing arguments"
  exit 1
fi

if [ -d "$f_file" ]
then
  echo "$f_file is a directory"
elif [ -f "$f_file" ]
then
  echo "$f_file is a file"
else
  echo "There is not such a file or directory"
fi
