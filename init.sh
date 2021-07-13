#!/usr/bin/env bash
mkdir ~/.aws
file=$1  
while read line; do  
  
#Readind each line in sequence
ACCESS_KEY=$line
SECRET_KEY=$line
done 
cd ~/.aws
touch credentials
echo "aws_access_key_id = $ACCESS_KEY" >> credentials
echo "aws_secret_access_key = $SECRET_KEY">> credentials
