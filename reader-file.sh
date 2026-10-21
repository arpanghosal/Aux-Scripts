#! /bin/bash

while read p   #p is variable to store the file contents
do
	echo $p
done < loop_arith.sh

cat loop_arith.sh | while read p   #same thing basically
do
	echo $p
done 

while IFS= read -r line      #there's a space after IFS so that it acknowledges the spaces in the text code, and also other special characters
do 
	echo $line
done < loop_arith.sh

while IFS= read -r line      #Reading another file using its pwd
do 
	echo $line
done < shell-test/vnc.sh
