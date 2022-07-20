#!/bin/bash 

read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c

first=`echo $a $b $c | awk '{t=$1+($2*$3)} {print t}'`
second=`echo $a $b $c | awk '{t=$1%($2+$3)} {print t}'`
third=`echo $a $b $c | awk '{t=$3+($1/$2)} {print t}'`
fourth=`echo $a $b $c | awk '{t=($1*$2)+$3} {print t}'`

echo "Result of 1st expression: " $first
echo "Result of 2nd expression: " $second
echo "Result of 3rd expression: " $third
echo "Result of 4th expression: " $fourth

declare -A arr
arr[num1]=$first
arr[num2]=$second
arr[num3]=$third
arr[num4]=$fourth
KEYS=$(
for KEY in ${!arr[@]}; 
do
  echo "${arr[$KEY]}:::$KEY"
done | sort | awk -F::: '{print $2}'
)

for
 do
  VAL=${arr[$KEY]}
  echo VAL=[$VAL]"
done
