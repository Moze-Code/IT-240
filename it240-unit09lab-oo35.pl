#!/usr/bin/perl
use strict;
use warnings;

#Name- Omoze Oyarebu
#Course- IT 240
#Date- 3/24/23

#Getting the numbers from the user input
print "Enter a number 1: ";
chomp(my $num1= <STDIN> );

print "Enter number 2: ";
chomp(my $num2= <STDIN> );

my $sum=$num1 + $num2;
my $product=$num1 * $num2;
my $percent_fraction=0;

#checking whether the second number is 0
if ($num2 == 0) {
    print "Can not divide by 0\n";
}else {
    $percent_fraction=($num1 / $num2) * 100;

}

#Arrange in column order: sum,product, and percent fraction
printf"%-10s%-10s%-10s\n", "Sum", "Product", "Percent Fraction";
printf "%-10d%-10d%-.2f%%\n", $sum, $product,$percent_fraction;

