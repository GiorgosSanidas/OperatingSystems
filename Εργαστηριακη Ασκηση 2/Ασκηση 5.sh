#!/bin/bash

array=( "Zero" "One" "Two" "Three" "Four", "Five" "Six" "Seven" "Eight" "Nine" )

echo "give a number: "
read num

echo "${array[$num]}"


