#! /bin/bash
for i in {1..10..2}
do 
	echo $i
done

for ((i=0; i<5; i++))
do
	echo $i
done

for command in ls pwd date 
do
	$command
	echo "------------------"
done


for item in *     #look for each item in the folder
do
	if [ -d $item ]    #and print out the directories if there are any
	then  
		echo $item
	fi
done

