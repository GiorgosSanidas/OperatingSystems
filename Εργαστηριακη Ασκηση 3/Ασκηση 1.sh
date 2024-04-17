#!/bin/bash

echo "Give a file: "
read filee

while [ ! -f "$filee" ]
do
  echo "File not found"
  sleep 5
done

ls -l "$filee"
