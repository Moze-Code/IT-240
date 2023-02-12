#!/bin/bash

echo "Author-Omoze Oyarebu"
echo "Course-IT240"
echo "Unit 1 Assignment"
echo "Today's date is:"
date
echo

echo "Current Shell:"
echo $SHELL
echo

echo "My Friends are:"
cat my_friends.txt

echo "The number of words in the Friends file is:"
wc -w my_friends.txt
echo

echo "My Family are:"
cat my_family.txt

echo "The number of words in the Family file is:"
wc -w my_family.txt
echo

echo "Here is the combined friends and family files:"
cat my_friends.txt my_family.txt > family_friends.txt
cat family_friends.txt
echo

echo "The number of words for the combined family and friends files is:"
wc -w family_friends.txt
echo

echo "Contents of all files listed:"
cat my_friends.txt my_family.txt family_friends.txt
