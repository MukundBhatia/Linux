#! /bin/bash
func1()
{
echo "Does the file contain header?(Y/N)"
read ans
var1="Y"
if [[ "$ans" == "$var1" ]]; then
  awk -F',' 'NR==2, NR==n {print $0}' $fname|cat>cpfile.csv
  header=$(head -n 1 $fname)
  header+=",total"
  echo "$header"|cat>$fname
else
  cp $fname cpfile.csv
fi
awk -F',' '{print $(NF-4)+$(NF-3)+$(NF-2)+$(NF-1)+$NF}' cpfile.csv |cat>new_1_1.csv
paste -d , cpfile.csv new_1_1.csv>inter_1_1.csv
if [[ "$ans" == "$var1" ]]; then
  sort -t , -k 2n inter_1_1.csv>>$fname

else
  sort -t , -k 2n inter_1_1.csv>$fname
fi
rm inter_1_1.csv new_1_1.csv cpfile.csv
cat<$fname
}


echo "Enter file name"
read fname

func1

