#! /bin/bash

usage(){
	echo "Please provide an argument"
}

does_file_exist(){

	local file=$1                   #the input is passed to local variable file 
	[[ -f "$file" ]] && return 0 || return 1    #ternanry operator to check if the file exists or not and pass 0 (true) or pass 1 (false) 
}

[[ $#  -eq 0 ]] && usage    #if argument length is 0, it goes to usage function

if (does_file_exist  "$1" )  #if the argument passed from does_file_exist is 0, i.e $1, then print found; $1 is 0, $2 is 1
then 
	echo "File found"
else echo "File not found"
fi