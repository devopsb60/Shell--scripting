#!/bin/bash
source compnents/common.sh
Print "installing nginx"
yum install nginx -y &>>$Log
stat $?


Print  "enabling nginx"
systemctl enable nginx
stat $?

Print "restarting nginx"
systemctl start nginx
stat $?
#Let's download the HTDOCS content and deploy under the Nginx path.


curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
print "downloaded the main in the "
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