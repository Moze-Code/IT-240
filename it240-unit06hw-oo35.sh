#!/bin/bash

#Name- Omoze Oyarebu
#Course- IT 240
#Date- 2/26/23

#getting the date using TZ to get current time zone
echo Today\'s date and time is: $(TZ=EST5 date)
echo


fav_Anime="Black Lagoon:Naruto:Attack on Titan:Bleach:Demon Slayer:Hunter x Hunter:Vinland Saga:Jujutsu Kaisen:One Punch Man:Parasyte"

#A specified delimiter used as whitespace separators
IFS=":"

#Test whether the fav_Anime variable is null or not
if [ -n "$fav_Anime"  ]
then
	echo "The \$fav_Anime variable is not null."
elif [ -z "$fav_Anime" ]
then
	echo "The \$fav_Anime variable is null."
fi

counter=1 #Used to keep track of the number of the for loop iterations


#printing each delimited value in the fav_Anime variable
for value in $fav_Anime
do
	echo "Favorite Anime $counter in \$fav_Anime variable is $value."
	counter=$((counter+1)) #updating the counter by 1 each time
done
