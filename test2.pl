#!/usr/bin/perl
use strict;
use warnings;

#test 2 practice


#split test
my $string = "My,name,is,Omoze,Oyarebu";
my @list = split //, $string;
print "Split test returns: @list\n";

#next operator skips any current loop iteration
my @numbers = (1, 2, 3, 4, 5);

foreach my $number (@numbers) {
  if ($number == 3) {
    next;
  }
  print "$number\n";
}

#last operator- breaks out of a loop
# Create an array of numbers
my @numbers = (1, 3, 5, 7, 9, 11, 13, 15);

# Loop through the array
foreach my $number (@numbers) {

    # If the number is greater than 10, exit the loop
    if ($number > 10) {
        last;
    }

    # Print the current number
    print "Current number: $number\n";
}

print "Loop finished\n";

#normal for loop- great for unique iterations 
for ($i = 10; $i >= 1; $i--) {
	print "I can count down to $i\n";
}

#foreach loop- is great to just iterate over an array,list or hash
my @array = (1, 2, 3, 4, 5);
foreach my $element (@array) {
    print "$element\n";
}

#Making a directory
# mkdir $directory_path, $file_permission;

my $new_directory = "new_folder";

# create new directory
mkdir $new_directory or die "Could not create $new_directory: $!";

print "Directory created successfully\n";


#removing a directory
my $dir = "my_directory";

if (rmdir $dir) {
    print "Directory $dir has been removed successfully.\n";
} else {
    print "Failed to remove directory $dir: $!\n";
}


#directory handles
#opendir-lets you open the directory files names
#readdir- lets you read the file names in that directory once open
#closedir- close the directory after reading all the file names
#looking at a directory 
my $dir = shift @ARGV; #passing a variable a directory

opendir(my $dh, $dir) or die "Cannot open directory: $!"; #opening that directory
my @files = grep { -f "$dir/$_" } readdir $dh; #reading
closedir $dh;

#glob- used to search for file names that match a pattern
my @files = glob("/path/to/files/*"); #show all the files in the given directory
my @txt_files = glob("/path/to/files/*.txt"); #show all the files in the directory with a .txt extension.

#unlink- deletes a file
unlink "file.txt";  # deletes a single file

unlink @file_list;  # deletes a list of files

#index find the first occurance of a substring
#index($string, $substring);
my $string = "Hello, World!";
my $substring = "World";

my $position = index($string, $substring);

if ($position != -1) {
    print "Found substring at position $position\n";
} else {
    print "Substring not found\n";
}

#join- concatenate the elements of an array into a single string with a specified delimeter
#join($delimiter, @list)
my @list = ('apple', 'banana', 'orange');
my $string = join(', ', @list);
print $string; # Output: "apple, banana, orange"


#substr- used to extract a substring from a given string or to replace a part of the string with another substring.
#substr STRING, OFFSET, LENGTH, REPLACEMENT
# Extract the first three characters of a string
my $string = "Hello, world!";
my $substring = substr($string, 0, 3);  # $substring is "Hel"

# Replace a portion of a string with another substring
my $string = "Hello, world!";
substr($string, 0, 5) = "Goodbye";  # $string is "Goodbye, world!"

# Extract the last four characters of a string
my $string = "Hello, world!";
my $substring = substr($string, -4);  # $substring is "rld!"

#file tests
# -e - File or directory name exists
# -d - Entry is a directory
# -x - File or directory is executable by this real user or group
# -M - Modification age (measured in days)
# -f - Entry is a plain file
# -r - File or directory is readable by this (effective) user or group
# -w - File or directory is writable by this (effective) user or group

#Regex
# =~ - Binding operator that matches a pattern on the right side against the left side
# /i - Makes the whole expression case-insensitive.For example, /aBc/i would match AbC.
# \w - Matches any word character.Equivalent to [A-Za-z0-9_]
# /s - Matches any whitespace character (spaces, tabs, line breaks).
# s/// - Replaces a pattern in a string(s/pattern/replacement/flags)


# /g - When the /g modifier is used with a regular expression, it tells Perl to continue searching the string from the end of the previous match. This means that it matches all occurrences of the pattern in the string, not just the first occurrence.

# ? - Match 0 or 1 tiems; or shortest match
# ^ - Matches the begining of a string or line
# $ - match the end of a string or line
# + - match preceding one or more character



