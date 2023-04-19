#!/bin/bash
    
#Name- Omoze Oyarebu
#Course- IT 240
#Date- 2/22/23

echo Today\'s date and time is: $(TZ=EST5 date)
echo

echo "Enter the amount you wantto purchase:"
read purchase

printf "you entered a price of: %10.2f\n" $purchase

echo "Now enter the sales tax rate:"
read prompt

tax=$(( $purchase * $prompt / 100 ))
printf "Your tax due on purchase is: $tax


total_purchase=$(( $purchase + $tax ))


printf "Your total is: %17.2f\n" $total_purchase"

