#!/bin/bash

awk '{ sum += $2 } END { if (NR > 0) print "AVG= ",sum/NR }' test.txt

