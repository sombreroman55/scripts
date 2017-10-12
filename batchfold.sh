#!/bin/bash

# Create numbered folders with the specified prefix
# from one up to the specified number

i=1
while [ $i -le $2 ] ; do
	mkdir "$1$i"
	i=`expr $i '+' 1`
done
