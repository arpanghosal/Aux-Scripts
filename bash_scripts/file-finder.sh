#! /bin/bash

echo -e "Enter filename that you want to find : \c" #-e flag is to read the backslash before c and \c is to keep the cursor in that position
read file     #Enter with extensions

if [ -w $file ]   #-e flag checks if file exists or not; -f checks if it exists, it's a regular file or not:\; -d to find directory, -x, -r, -w, -c, -b, -s checks if it is empty or not
then
	echo "File found"
else
	echo "File not found"
fi

read directory
if [ -d $directory ]   #-e flag checks if file exists or not; -f checks if it exists, it's a regular file or not:\; -d to find directory
then
	echo "directory found"
else
	echo "directory not found"
fi
_='Output will be:
Enter filename that you want to find : loop.sh
File found
shell-test
directory found
'
