#! /bin/bash

echo "Enter first file name"
read fname1
echo "Enter second file name"
read fname2

diff $fname1 $fname2 | awk '{if($1=="<" || $1==">" ){ print $0}}' | wc -l
