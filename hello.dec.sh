#! /bin/bash
# comment
echo "Hello World"
echo $BASH
echo $BASH_VERSION
echo $PWD
echo 'names:'
read name1 name2 
read -p 'name:' name   #-p allows user to input on same line
read -sp 'pass:' pass  #-sp don't show what is being typed
echo
echo "name: $name"
echo "pass: $pass"
echo $name1 $name2 
read -a namelist #-a for array
echo ${namelist[0]} ${namelist[1]}
