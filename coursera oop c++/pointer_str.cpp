#include<iostream>
#include<stdio.h>
int main() 
{ 
	std::string a = "AGhosal";
  auto str = a.c_str();  

  
   /* Stored in read only part of data segment */
   //str =;      
   std::cout<<str<<std::endl;
   std::cout<<"memory add of a  "<< &a<<std::endl;
   std::cout<<&str<<std::endl;
   /* Problem:  trying to modify read only memory */
   //*(str+1) = 'n';  
   return 0; 
} 

