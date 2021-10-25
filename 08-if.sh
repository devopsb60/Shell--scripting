#!/bin/bash

read -p "enter username: " Name

if ["#Name" == "root"]:
then
  echo "hey your are root user"
  else
    echo "its not root user"
  fi