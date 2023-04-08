#!/usr/bin/perl
use strict;
use warnings;

#Name:Omoze oyarebu, Course:It 240, Date:4/7/23

#ask the user for a string
print "Enter a string:\n";
chomp(my $prompt = <STDIN>);

$_ = $prompt;

#Exercise a
# .* ensures that either 'abc' or 'axbxc' is true
if (/(a.*b.*c)/) {
	print "Exercise a: Matches a string that has an “a”, a “b”, and a “c”, in that order. Any number of characters can be between those letters\n";
	print "The string '$prompt' matches the criteria\n\n";
} else {
	print "Exercise a: Matches a string that has an “a”, a “b”, and a “c”, in that order. Any number of characters can be between those letters\n";
	print "The string '$prompt' fails the match criteria\n\n";
}
	
#Exercise b
# .+ ensures there is a character predecidng 'abc' such that 'axbxc' is true and 'abc' is false
if (/(a.+b.+c)/) {
	print "Exercise b: Matches a string that has an “a”, a “b”, and a “c”, in that order, but must have at least one other character between each of those letters\n";
	print "The string '$prompt' matches the criteria\n\n";
} else {
	print "Exercise b:Exercise b: Matches a string that has an “a”, a “b”, and a “c”, in that order, but must have at least one other character between each of those letters\n";
	print "The string '$prompt' fails the match criteria\n\n";
}

#Exercise c
# [^b]*$ ensures that a 'b' doesn't appear after an 'a' and either no characters or other characters can come after
if (/(a[^b]*$)/) {
	print "Exercise c: Matches a string that contains an “a”, but doesn’t have a “b” anywhere after the “a”\n";
	print "The string '$prompt' matches the criteria\n\n";
} else {
	print "Exercise c: Matches a string that contains an “a”, but doesn’t have a “b” anywhere after the “a”\n";
	print "The string '$prompt' fails the match criteria\n\n";
}


