#!/bin/bash

#Name- Omoze Oyarebu
#Course- IT 240
#Date- 2/22/23

echo Today\'s date and time is: $(TZ=EST5 date)
echo

#printing the sciprt file name
echo "Script name: $0"

echo "Enter a file name:"
read prompt

#set $prompt

#printing out the data.csv
cat data.csv

counter=0
count_fields=0
sum=0
for x in $(cat $prompt)
do
    IFS=","
    set $x
    counter=$((counter+1))
    
    for y in $*
    do
   	 counter_fields=$((counter_fields+1))
   	 sum=$((sum+$y))
    done

done

echo "Number of lines:$counter"
echo "Number of Fields:$counter_fields"
echo "The sum:$sum"

