#!/bin/bash

Print(){
  echo -e "\e[1m$1\e[0m"
  echo -e "\n\e[36m=====================$1====================\e[0m" >>$Log
}

Log=/tmp/roboshop.log
rm -f $Log

Print "installing nginx"
yum install nginx -y &>>$Log

if [ $? -eq 0 ]; then
  echo -e "\e[1;32msuccess\e[0m"
  else
    echo -e "\e[1;31mFail\e[0m"
    fi

Print  "enabling nginx"
systemctl enable nginx
Print "restarting nginx"
systemctl start nginx
#Let's download the HTDOCS content and deploy under the Nginx path.

exit
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
3Deploy in Nginx Default Location.

cd /usr/share/nginx/html
rm -rf *
unzip /tmp/frontend.zip
mv frontend-main/* .
mv static/* .
rm -rf frontend-master static README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
#Finally restart the service once to effect the changes.

systemctl restart nginx