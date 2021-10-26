#!/bin/bash
source components/common.sh
##Setup MongoDB repos.
Print "download repo"
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo
stat $?
##Install Mongo & Start Service.
Print "Install MongoDB"
yum install -y mongodb-org  &>>$Log
stat $?

Print "enable mongoDB"
systemctl enable mongod  &>>$Log
stat $?

Print "Start MongoDB"
systemctl start mongod  &>>$Log
stat $?

##Update Liste IP address from 127.0.0.1 to 0.0.0.0 in config file
## sed -i "edit the file directly"-e /s/root/Root/g;- edit
## sed -i -e '1 d' file name - to delate particular line
## sed -i -e '/root/d' file
# sed -i -e '1 a hellw ' file
#sed -i -e /etc/mongod
##Config file: /etc/mongod.conf

##then restart the service

##systemctl restart mongod
##Every Database needs the schema to be loaded for the application to work.
##Download the schema and load it.

##curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip"

##cd /tmp
##unzip mongodb.zip
##cd mongodb-main
##mongo < catalogue.js
##mongo < users.js
