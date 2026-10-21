#! /bin/bash
_='echo $BASH
echo $BASH_VERSION
echo "Name:"
read
echo "Name : $REPLY"   #REPLY variable for storing values if variable name is not given in read
echo "Name : $reply"   #will not give anything  - REPLY is case sensitive'
#commented this whole block out
echo "Hello World"
#echo $1 $2 '>echo $1 $2'
_='Output is : 
Hello World
Tom Mark >echo $1 $2
'
----------------------------
echo $0 $1 $2 '>echo $1 $2'
_='Output is : 
Hello World
Tom Josh >echo $1 $2
./reply.sh Tom Josh >echo $1 $2
'
#$0 spits out the shell script name as well

#Now to pass as an array
-----------------------------
arr=("$@")  #$@ is the default variable to store array

echo ${arr[0]} ${arr[1]} ${arr[2]} ${arr[4]} #Print one at a time

echo $@  #Print whole array at a time

echo $#  #Print number of input
--------------------------
_='Output is : 
Hello World
./reply.sh Tom Josh >echo $1 $2
Tom Josh Mark Stark
Tom Josh Mark Tony Stark Srya Siri Cortana
8
'




