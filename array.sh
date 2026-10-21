#! /bin/bash
: '
comm1 
comm2
comm3'
names=('Tom' 'Dick' 'Harry')

echo "${names[@]}"
echo "${names[1]}"
echo "${!names[@]}"   #to print indices of the array - 0 1 2 and so on
echo "${#names[@]}"   #to print length of the array


names[3]='John'       #appending the array
echo "${names[@]}"

unset names[2]   #Removing the third element

echo "${names[@]}"

#Gaps in arrays are alright - we can fill 1st but leave 2nd and so on...but at the very end, the length is still the number of occupied cells

string=arpanghosal   #everything input in 0th index
echo "${string[0]}"
