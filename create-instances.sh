#!/bin/usr


aws ec2 run-instances --image-id  ami-02e136e904f3da870 --instance-type t2.micro --tag-specification "ResourceType=instance,Tags=[{Key=Name,Value=cart$1}]" | jq