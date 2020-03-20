#!/bin/bash
ssh ec2-user@$1 "sudo yum update -y"
ssh ec2-user@$1 "sudo amazon-linux-extras install docker"
ssh ec2-user@$1 "sudo service docker start"
ssh ec2-user@$1 "sudo usermod -a -G docker ec2-user"

ssh ec2-user@$1 "sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose"
ssh ec2-user@$1 "sudo chmod +x /usr/local/bin/docker-compose"
ssh ec2-user@$1 "sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose"