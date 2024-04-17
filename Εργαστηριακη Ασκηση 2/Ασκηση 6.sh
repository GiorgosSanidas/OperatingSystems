#!/bin/bash

echo "give birthday: "
read bd

birth_ts=$(date +%s -d "$bd")
now_ts=$(date +%s)

age=$(( (now_ts - birth_ts) / (36525 * 864) ))
echo "$age"

if [ "${age}" -lt 12 ]; then
    echo "Hello little boy"
elif [ "${age}" -ge 12 ] && [ "${age}" -le 18 ]; then
    echo "Hello teenager"
elif [ "${age}" -ge 19 ] && [ "${age}" -lt 45 ]; then
    echo "Hello little mister"
else
    echo "Hello mister";
fi
