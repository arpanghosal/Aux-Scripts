#! /bin/bash

#select name in jon tom gru pot top   #select makes a menu out of things
#do
#   echo "$name has been selected"
#done

_='Output will be:
1) jon
2) tom
3) gru
4) pot
5) top
#? 3
gru has been selected
#? 4
pot has been selected
#? 1
jon has been selected
#? 9
 has been selected
#? ^C
'
--------------------------------------

select name in jon tom gru pot top   
do
	case $name in 
		jon)
        echo "age is 24 y" ;;
		tom)
        echo "age is 21 y" ;;
		gru)
        echo "age is 23 y" ;;
		pot)
        echo "age is 25 y" ;;
		top)
        echo "age is 24 y" ;;

    esac
done
