Print(){
  echo -n -e "\e[1m$1\e[0m"
  echo -e "\n\e[36m=====================$1====================\e[0m" >>$Log
}

stat(){
  if [ $1 -eq 0 ]; then
    echo -e "\e[1;32msuccess\e[0m"
    else
      echo -e "\e[1;31mFail\e[0m"
      fi
}

Log=/tmp/roboshop.log
rm -f $Log
