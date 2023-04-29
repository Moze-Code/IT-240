#!/usr/bin/perl
use strict;
use warnings;

#Name:Omoze oyarebu, Course:It 240, Date:4/28/23

#universal time stamp
my $now = gmtime;
print "Time is: $now\n\n";

#looking at a directory 
my $dir = shift @ARGV;

opendir(my $dh, $dir) or die "Cannot open directory: $!";
my @files = grep { -f "$dir/$_" } readdir $dh;
closedir $dh;

#checking whether the list is empty using perl's built in scalar function
if (scalar(@files) == 0) {
    print "The list is empty.\n";
    exit();
}

#sorting the new list(newest file to oldest file) using -C
my @sort_file_list = sort {-C  "$dir/$a" <=> -C "$dir/$b" } @files;

#storing the newest and oldest file ages in days
my $newest_file = -C(@sort_file_list[0]);
my $oldest_file = -C(@sort_file_list[-1]);


print "The newest file in the $dir directory is: $sort_file_list[0]\n";
printf "It is %.5f days old\n\n", $newest_file;

print "The oldest file in the $dir directory is: $sort_file_list[-1]\n";	
printf "It is %.5f days old\n", $oldest_file;
