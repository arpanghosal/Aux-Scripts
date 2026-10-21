#! /bin/bash  
#can put -x here as well  just next to bin/bash for debugging purposes

trap "echo Exit command is detected" 0   #echo is the command that will be cached during exit command (0 is that exit is true)
trap "echo Exit signal is detected"  SIGINT #whenever we will give ctrl+C, it will display this message. Anyway, instead of SIGINT, we can also give the value 2 from signal manual

echo "pid is $$"
while (( count < 5 ))
do 
    sleep 0.5
    (( count++ ))
    echo $count
done

echo "Hello World"
exit 0
-----------------------------

_='Output will be:
pid is 26489  
1
2
3
4
5
Hello World
Exit command is detected
---------------------------------------
Or if ctrl+C is input while running:
pid is 26567
1
2
3
^CExit signal is detected    #Ctrl + C did not stop the script from running by the way
4
5
Hello World
Exit command is detected
'

