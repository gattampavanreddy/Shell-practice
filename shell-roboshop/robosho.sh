#!/bin/bash

SG_ID= "sg-095a9a8243a52d49f"  
AMI_ID= "ami-0220d79f3f480ecf5"

for instance in $@
 do
   aws ec2 run-instances --image-id $AMI_ID --instance-type t3.micro D --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$instance}]" --query 'reservations[0].instances[0].
   privateIpAddress' --output text
done





