#!/bin/bash
source components/common.sh
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

##exit
Print "download html pages"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" &>>$Log
stat $?

Print "downloaded the main in the repo provided "
#Deploy in Nginx Default Location.

cd /usr/share/nginx/html
Print"remove the old HTML Pages"
rm -rf *
stat $?
Print"unzip the frontendfile"
unzip /tmp/frontend.zip &>>$Log
stat $?
mv frontend-main/* .
mv static/* .
rm -rf frontend-master static README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
#Finally restart the service once to effect the changes.

systemctl restart nginx
Print "nginx is restarted"