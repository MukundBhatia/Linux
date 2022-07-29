#! /bin/bash

echo "Enter file name"

read  fname

awk -F',' '{print $3,$5}' $fname
