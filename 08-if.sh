#!/bin/bash

read -p "enter username: " Name

if ["#Name" == "root"]:
then
  echo "hey your are root user"
  else
    echo "its not root user"
  fi

  if [$UID -eq 0]; then
    echo "you are not root user"
    else
      echo "you are root user"
      fi
