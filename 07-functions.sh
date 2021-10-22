#!/bin/bash

##functions should be always declared before used same like variable
##so that is the reason functions we we find starting of the scripts

function abc(){
  echo i am a function abc
  a=1
  echo a in function is =$a
  b=20
}
xyz(){
  echo i am a function xyz
}
##Main Program
abc
a=10
echo b in main program is =$b
xyz



