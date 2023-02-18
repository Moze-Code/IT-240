#!/bin/bash

#Name- Omoze Oyarebu
#Course- IT 240
#Date- 2/13/23

echo Today\'s date and time is: $(date)
echo

#passed as an argument
legal_variable="$1"



#test whether the variable starts with a lowercase letter
if echo "$legal_variable" | grep -q "^[a-z]" 
then
    echo "$legal_variable starts with a lowercase letter"
else
	echo "$legal_variable does not start with a lowercase letter"
fi

#test whether the variable starts with a capital letter
if echo "$legal_variable" | grep -q "^[A-Z]" 
then
    echo "$legal_variable starts with a capital letter"
else
	echo "$legal_variable does not start with a capital letter"
fi

#test whether the variable starts with a number
if echo "$legal_variable" | grep -q "^[0-9]" 
then
    echo "$legal_variable starts with a number"
else
	echo "$legal_variable does not start with a number"
fi

#test either @ or $1 or both characters are in the variable
if echo "$legal_variable" | grep  -q "@\$1"
then
    echo "$legal_variable has both '@\$1'"
elif echo "$legal_variable" | grep  -q "@"
then 
	echo "Only contains the @ character in:$legal_variable"
elif echo "$legal_variable" | grep -q "\$1"
then
	echo "Only contains the \$1 character in:$legal_variable"
else
	echo "Both the @ and  \$1 characters are not present in $legal_variable"
fi

#test whether the # character is in the variable
if echo "$legal_variable" | grep  -q "\#"
then
    echo "Contains the # character in:$legal_variable"
else
	echo "does not containt the \# character"
fi




