#!/bin/bash

for ((i=1;i<=150;i++)); do
    touch "file$i"
    echo "$i" > "file$i"
done
