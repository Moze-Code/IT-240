#!/usr/bin/perl
use warnings;

#Name- Omoze Oyarebu, Course-IT 240, Date-3/10/23

print "Enter number 1: ";
chomp($num1= <STDIN> );

print "Enter number 2: ";
chomp($num2= <STDIN> );

if ($num1 > $num2) {
	print "$num1 is greater than $num2 \n";
} elsif ($num2 > $num1 ) {
	print "$num2 is greater than $num1 \n";
} else {
	print "$num1 and $num2 are equal\n";
}
