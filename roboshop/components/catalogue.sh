#!/bin/bash
source components/common.sh
Print "installing nodejs"
yum install nodejs make gcc-c++ -y &>>$Log
stat $?

Print "useradd roboshop"
id roboshop &>>$Log
if [ $? -eq 0 ];then
  echo "user already exists"
  else
useradd roboshop &>>$Log
fi
stat $?
#So let's switch to the roboshop user and run the following commands.

Print "downlaod catalogue"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>$Log
stat $?

Print "remove old file"
rm -rf /home/roboshop/catalogue &>>$Log
stat $?

Print "extract the zip file"
unzip  -o -d /home/roboshop /tmp/catalogue.zip &>>$Log
stat $?

Print "Move files to catlaogue"
mv /home/roboshop/catalogue-main  /home/roboshop/catalogue &>>$Log
stat $?

Print "change to directory and install"
cd /home/roboshop/catalogue
npm install --unsafe-perm &>>$Log
stat $?

##NOTE: We need to update the IP address of MONGODB Server in systemd.service file
##Now, lets set up the service with systemctl.
exit

Print "moving the services to catlogue"
mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service &>>$Log
stat $?

Print "Restart the service"
systemctl daemon-reload &>>$Log
systemctl start catalogue &>>$Log
systemctl enable catalogue &>>$Log
stat $?