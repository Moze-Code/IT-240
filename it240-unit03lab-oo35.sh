#!/bin/bash

#Name-Omoze Oyarebu
#Course-IT 240
#Date-2/3/23

echo Today\'s date and time is: $(date)
echo

#1st Variable
directorylist1=$(ls /usr/bin/*.sh | wc -l)
echo

echo "you have $(ls /usr/bin/*.sh | wc -l) files in usr bin"

#second variable
directorylist2=$(cat /usr/bin/*.sh | grep 'Copyright'| wc -l)
echo

echo "you have $(cat /usr/bin/*.sh | grep 'Copyright'| wc -l) files with Copyright in usr bin"

#Third Variable
result=$((directorylist2-directorylist1))
echo "The result of subtracting the smaller directory with the larger directory is:"
echo "$result"

