#!/bin/bash

##functions should be always declared before used same like variable
##so that is the reason functions we we find starting of the scripts

function abc(){
  echo i am a function abc
  a=1
  echo a in function is =$a
  b=20
return
echo first argument in function =$1
}
xyz(){
  echo i am a function xyz
}
##Main Program
a=10
abc $1
echo b in main program is =$b
echo exit status of abc=$?
xyz
echo first argument in main program  =$1



