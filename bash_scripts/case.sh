#! /bin/bash

room=$1    #take first argument of input data

case $room in 
	10 )      #pattern can be anything - string ("car","bus","bike") as well
    echo "Rent is 250 euros" ;;
    20 )
    echo "Rent is 350 euros" ;;
    30 )
    echo "Rent is 450 euros" ;;
    * )                        #wildcard entry: not recognised 
    echo "Rent is unknown" ;;

esac

_='Output:
arpan@arpan-ThinkPad-E490:~/Desktop$ ./case.sh 20
Rent is 350 euros
arpan@arpan-ThinkPad-E490:~/Desktop$ ./case.sh 80
Rent is unknown
'
-------------------------------------------------

echo -e "Enter some character : \c"
read character

case $character in 
	[a-z] )
      echo "Small alphabet" ;;
    [A-Z] )
      echo "Capital alphabet" ;;
    [0-9] )
      echo "Number" ;;
    ? )                               #special character only one 
      echo "One-lettered special character" ;;
    * )                               #any number of any characters - wildcard
      echo "Unkown character" ;;
esac


