#! /bin/bash

function add(){
	read num1  num2
	echo "$((num1+num2))"
}
function print(){
	echo $1
}

speak(){
	echo "HELLOOOOO"
}

quit() {
	exit
}

print Hello
print World
print "to you too"
add
speak
quit


_='Output will be:
Hello
World
to you too
6 -5    
1
HELLOOOOO
'

#to make any variable local, just add 'local' keyword before it

