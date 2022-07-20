#!/bin/bash

echo "flip Coin Simulator"

echo "number of times user want to flip the coin"
read flip
echo $flip

countHHH=0
countTTT=0
countTHT=0
countHTH=0
countHHT=0
countTTH=0
countTHH=0
countHTT=0
declare -A noOfCounts
for((i=0;i<flip;i++))
do
if [ $((RANDOM%8)) -eq 0 ]
then
((countHHH++))
elif [ $((RANDOM%8)) -eq 1 ]
then
((countTTT++))
elif [ $((RANDOM%8)) -eq 2 ]
then
((countTHT++))
elif [ $((RANDOM%8)) -eq 3 ]
then
((counHHT++))
elif [ $((RANDOM%8)) -eq 4 ]
then
((countTHH++))
elif [ $((RANDOM%8)) -eq 5 ]
then
((countHTT++))
elif [ $((RANDOM%8)) -eq 6 ]
then 
((countHTH++))
else
((countTTH++))
fi
done
echo "HHH="$countHHH
echo "TTT="$countTTT
echo "THT="$countTHT
echo "HTH="$countHTH
echo "HHT="$countHHT
echo "TTH="$countTTH
echo "THH="$countTHH
echo "HTT="$countHTT

noOfCounts[hhh]=$countHHH
noOfCounts[ttt]=$countTTT
noOfCounts[tht]=$countTHT
noOfCounts[hth]=$countHTH
noOfCounts[hht]=$countHHT
noOfCounts[tth]=$countTTH
noOfCounts[thh]=$countTHH
noOfCounts[htt]=$countHTT

echo ${noOfCounts[@]}

PercentageOfTTT=$((100*$countTTT/$flip))
echo "Percentage of TTT= "$PercentageOfTTT
