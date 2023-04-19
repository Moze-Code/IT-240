#!/bin/bash

#Name- Omoze Oyarebu
#Course- IT 240
#Date- 1/27/23

echo "Today's date is:"
date
echo


#cat /etc/passwd


cut -d: -f1,6 /etc/passwd | grep "/var/" | sort > sortedfile.txt
echo

echo "sed output:"
sed 's/:/\t\t/g' sorte

