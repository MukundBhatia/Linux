#! /bin/bash

echo "Enter file name"

read fname1
awk -F',' 'NR==2 {print $0}' $fname1 
