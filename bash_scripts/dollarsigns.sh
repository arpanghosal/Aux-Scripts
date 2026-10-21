#! /bin/bash

echo "Starting program at $(date)"
echo "Running program $0 with $# arguments with pid $$"

for file in "$@"; do
	grep bash "$file" > /dev/null
	# when pattern is not found, grep has exit status
	# we redirect STDOUT to a null register 
	if [[ "$?" -ne 0 ]]; then
		echo "File $file does not have any bash, adding one"
		echo "# bash" >> "$file"
	fi
done
