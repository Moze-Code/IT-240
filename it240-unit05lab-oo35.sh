#!/bin/bash

echo Today\'s date and time is: $(date)
echo

filename=$1

if [ -d $filename ]
then
    echo "$filename is directory"
else
    echo "$filename is not a directory"
fi

if [ -r $filename ]
then
    echo "$filename is readable"
else
    echo "$filename is not readable"
fi

if [ -w $filename ]
then
    echo "$filename is writable"
else
    echo "$filename is not writable"
fi

if [ -x $filename ]
then
    echo "$filename is executable"
else
    echo "$filename is not executable"
fi

if [ -e $filename ]
then
    echo "$filename exists"
else
    echo "$filename does not exists"

