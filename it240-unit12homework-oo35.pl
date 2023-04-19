#!/usr/bin/perl
use strict;
use warnings;

#Name:Omoze oyarebu, Course:It 240, Date:4/18/23

#Ask the user for a variable name
print "Enter a variable name:\n";
chomp(my $v_name = <STDIN>);


#Calculating the length of the input string
my $count_length = 0;
foreach my $index (split //, $v_name) {
	$count_length++;
}

#checking whether input string is a valid scalar, array, or hash variable name
#Critieria-
	#a.	Scalar variables start with "$"
	#b.	Array variables start with "@"
	#c.	Hash variables start with "%"
	#d.	All variables second character can only be a letter or an underscore
	#e.	All variables remaining characters can only contain letters
if ($v_name =~ /^\$([a-z]|_)[^0-9]+$/i) {
	print "This is a valid Scalar variable name.\n";
	print "The length of the variable is $count_length characters.\n";
} elsif ($v_name =~ /^@([a-z]|_)[^0-9]+$/i) {
	print "This is valid a Array variable name.\n";
	print "The length of the variable is $count_length characters.\n";
} elsif ($v_name =~ /^%([a-z]|_)[^0-9]+$/i) {
	print "THis is a valid Hash variable name.\n";
	print "The length of the variable is $count_length characters.\n";
}else {
	print "Nether a Scalar, Array or Hash Variable.\n";
}
