#!bin/bash

#Name- Omoze Oyarebu
#Course- IT 240
#Date- 1/28/23

echo Today\'s date and time is: $(date)




#look for the first line starting with # in all .sh files and count how many times it occurs
grep '^#' /etc/profile.d/*.sh | wc -l
echo

#look for the first line starting with # in all .sh files and count how many times it occurs
grep '^#' /usr/bin/*.sh | wc -l
echo

#look for the first line starting with # in all .sh files and count how many times it occurs
grep '^#' /usr/libexec/*.sh | wc -l
echo

echo "cat:"
cat /usr/libexec/*.sh | grep '^#' | wc -l
echo

count1=$(grep '^#' /etc/profile.d/*.sh | wc -l)
echo "count1:"
echo $count1

count2=$(grep '^#' /usr/bin/*.sh | wc -l)
echo "count2:"
echo $count2

count3=$(grep  '^#' /usr/libexec/*.sh | wc -l)
echo "count:"
echo $count3

echo "Total:"
echo $((count1+count2+count3))


#Could have used cat to look into files aswell
#echo "using cat:"
#cat /usr/bin/*.sh | grep '^#' | wc -l
#echo
