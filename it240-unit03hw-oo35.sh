#!/bin/bash

#Name- Omoze Oyarebu
#Course- IT 240
#Date- 1/28/23

echo Today\'s date and time is: $(date)
echo

username="$1"
userid=$(grep "^$username" /etc/passwd | cut -d: -f3)
echo "user id: $userid"

groupid=$(grep "^$username" /etc/passwd | cut -d: -f4)
echo "groupid is: $groupid "

useridinfo=$(grep "^$username" /etc/passwd | cut -d: -f5)
echo "useridinfo is: $useridinfo "

homedirectory=$(grep "^$username" /etc/passwd | cut -d: -f6)
echo "homedirectory is: $homedirectory"

commandshell=$(grep "^$username" /etc/passwd | cut -d: -f7)
echo "commandshell is: $commandshell "
