#! /bin/bash

n=1 
while [ $n -le 10 ]
do 
   echo "$n"
   n=$((n+1))    #Or simple ((n++))
done

m=1 
while [ $m -le 3 ]
do 
   echo "$m"
   ((m++))
   sleep 0.5    #print each number after a gap of 2 seconds
   #gnome-terminal & #to open terminal each time
   okular
done