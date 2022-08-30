#!/bin/bash

echo

# If input argument exists, cd into that directory
if [ "$1" != "" ]
   then cd "$1"
fi

pwd

# If no subdirectories, print "no sub-directories"
if [ `ls -F -1 | grep "/" | wc -l` = 0 ]   # Check if no folders
   then echo "   -> no sub-directories"
fi

# ls -R print recursively
# Code: pipe this command to filter for directories
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'

echo