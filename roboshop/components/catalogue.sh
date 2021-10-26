#!/bin/bash
source components/common.sh
Print "installing nodejs"
yum install nodejs make gcc-c++ -y &>>$Log
stat $?

Print "useradd roboshop"
useradd roboshop
stat $?
#So let's switch to the roboshop user and run the following commands.

Print "downlaod catalogue"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>$Log
stat $?

Print "remove old file"
rm -rf /home/roboshop/catalogue &>>$Log
stat $?

print "extract the zip file"
unzip  -o -d /home/roboshop /tmp/catalogue.zip &>>$Log
stat $?

exit
Print "Movefiles"
$ mv catalogue-main catalogue
$ cd /home/roboshop/catalogue
$ npm install
NOTE: We need to update the IP address of MONGODB Server in systemd.service file
Now, lets set up the service with systemctl.

# mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service
# systemctl daemon-reload
# systemctl start catalogue
# systemctl enable catalogue