#!/bin/bash

#Name- Omoze Oyarebu
#Course- IT 240
#Date- 2/21/23

#getting the date using TZ to get current time zone
echo Today\'s date and time is: $(TZ=EST5 date)
echo

if [ -e /home/$USER/bash_scripts/phonebook.txt ]
then
	echo "The file exists"
	if [ -r /home/$USER/bash_scripts/phonebook.txt ]
	then
		echo "The file is readable"
	fi
	
	if [ -w /home/$USER/bash_scripts/phonebook.txt ]
	then
		echo "The file is writeable"
	fi
	
	if [ ! -x /home/$USER/bash_scripts/phonebook.txt ]
	then
		chmod +x phonebook.txt
		echo "The file is executable"
	
	fi
	
	if [ -s /home/$USER/bash_scripts/phonebook.txt ]
	then
		echo "The file is not empty"
		echo "The number of records in the file is:"
		echo $(wc -l < phonebook.txt)
	fi
	
	if [ -w /home/$USER/bash_scripts/phonebook.txt ]
	then
		echo "Would you like to insert a new record?"
		read answer
		if [ $answer == yes ]
		then
			echo "Enter a name and a phone number"
			read prompt
			echo $prompt >> phonebook.txt
			echo "You've successfully added a new record"
			echo "Phonebook now contains:"
			cat phonebook.txt
		
		fi
			
	fi
	
else
	echo "No such file exists"
fi
