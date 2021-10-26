#!/bin/usr

##aws configure

count=$(aws ec2 describe-instances --filters  "Name=tag:Name,Values=$1" | jq ".Reservations[].Instances[].PrivateIpAddress" | grep -v null | wc -l)

  if [ $count -eq 0 ];then
  aws ec2 run-instances --image-id  ami-02e136e904f3da870 --instance-type t2.micro --security-group-ids sg-0a73547af7127614e --tag-specification "ResourceType=instance,Tags=[{Key=Name,Value=$1}]" | jq
 ## echo "instance created"
  else
    echo "instance already exits"
    fi

IP=$(aws ec2 describe-instances --filters  "Name=tag:Name,Values=$1" | jq ".Reservations[].Instances[].PrivateIpAddress" | grep -v null )
##aws ec2 describe-instances --filters  "Name=tag:Name,Values=$1" | jq ".Reservations[].Instances[].PrivateIpAddress" | wc -l

sed -e "s/DNSNAME/$1.roboshop.internal" -e "s/IPADDRESS/${IP}/" record.json >/tmp/record.json