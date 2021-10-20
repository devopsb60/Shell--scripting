#!/bin/bash

## To print some info we can use echo command or  printf

## we chose to go with echo because of its syntaxing

##syntax
# to print

echo Hello World
echo welcome


# ESC Sequences ,\n (new line) , \e (new tab)
#to enable any escape sequence we go with -e option and input should be in double quotes""

echo -e "hello world\nwelcome"\
echo -e "venkat\treddy"
