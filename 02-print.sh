#!/bin/bash

## To print some info we can use echo command or  printf

## we chose to go with echo because of its syntaxing

##syntax
# to print

echo Hello World
echo welcome

#escape sequence "\n new line","\t tab "
#to enable any seq we shoul use -e option
#also the input should be in quotes preferably double quotes""

echo -e "welcocome \nindia"

echo -e "venkat \t\treddy"

#coloured outputs
#syntax : echo -e "\e[COLmMessage"

## Colours   code
## Red       31
## Green     32
##Yellow     33
# Blue       34
#Magante     35
##cyan       36


echo  -e "\e[31mtext in red colour"
echo -e "\e[32mtext in red colour"
echo -e "\e[33mtext in yellow colour"
echo -e "\e[34mtext in blue colour"
echo -e "\e[35mtext in maganta colour"
echo -e "\e[36mtext in cyan colour"