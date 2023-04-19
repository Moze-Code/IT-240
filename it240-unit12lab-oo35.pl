#!/usr/bin/perl
use strict;
use warnings;

#Name:Omoze Oyarebu, Course:It 240, Date:4/14/23

#ask the user for a string
print "Enter a string:\n";
while(my $prompt = <STDIN>){
    chomp($prompt);

    #original string
    print "Original string: $prompt\n";

    #all uppercase
    my $stringup = uc($prompt);
    print "Uppercase: $stringup\n";

    #all lowercase
    my $stringlo = lc($prompt);
    print "Lowercase: $stringlo\n";

    #all lowercase except for the first character
    my $ignore_first = ucfirst(lc($prompt));
    print "All lowercase except for the first character: $ignore_first\n";

    print "Enter a string:\n";
}

