#!/bin/bash
#0indicated script name
echo 0 = $0
first argument to script
echo 1 = $1
#second argument
echo 2 = $2

#* abd # provides all the aruguments passed
echo "* = $*"
echo "# = $#"
# @ provides the no of values  of arguments passed
echo "@ = $@"

echo -e "your name = $1\n your age =$2"