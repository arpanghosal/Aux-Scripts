#! /bin/bash

word="arpan"
if [[ $word == "abs" ]]
then 
	echo "condition is true"
else 
	echo "condition is false"
fi
# [[]] for strings, (()) for integers whenever we use angled brackets <,>,>= etc

_='read word1
if [[ $word1 = 'a' ]]
then
	echo "true"
elif [[ $word1 = 'b' ]]
then
	echo "false"
else    
	echo "false"
fi'

num1=3
num2=4
echo $(( num1 + num2 ))   #dollar sign is required to acknowledge it as arithmetic statements
echo $(( 4-5 ))
echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 )
echo $(expr $num1 / $num2 )
