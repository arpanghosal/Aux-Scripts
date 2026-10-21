#! /bin/bash

_='num1=3
num2=4
echo $(( num1 + num2 ))   #dollar sign is required to acknowledge it as arithmetic statements
echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 )
echo $(expr $num1 / $num2 )	
'
------------------------------------------

echo "20.5-0.4" | bc    #bc is basic calculator for float arithmetics 

num1=3.5
num2=4.5
echo $num1+$num2 | bc
echo $num1-$num2 | bc
echo $num1*$num2 | bc
echo $num1/$num2 | bc
echo $num1%$num2 | bc

echo "scale=3;$num1/$num2" | bc
echo "scale=8;$num1/$num2" | bc
--------------------------------------------

_='Output will be:
20.1
8.0
-1.0
15.7
0
3.5
.777
.77777777
'

echo "scale=3;sqrt(3)" | bc -l     #-l to invoke the math library
