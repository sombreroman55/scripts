#!/bin/bash

# Create numbered folders with the specified prefix
# from one up to the specified number

i=1
while [ $i -le $2 ] ; do
    if [ $i -lt 10 ] ; then
	    mkdir "$10$i"
    else
        mkdir "$1$i"
    fi
	i=`expr $i '+' 1`
done
