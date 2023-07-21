#!/usr/bin/env bash

set -x 
# update package
sudo yum -y update

# install git
sudo yum -y  install git
# install docker
# sudo amazon-linux-extras install docker
sudo yum -y install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
# docker service auto start
sudo systemctl enable docker.service
sudo systemctl start docker.service


# install SSM
sudo yum install https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
#sudo systemctl start amazon-ssm-agent

# install cloudwatch agent
 
sudo yum install https://s3.amazonaws.com/amazoncloudwatch-agent/amazon_linux/amd64/latest/amazon-cloudwatch-agent.rpm
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -m ec2 -a start
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -m ec2 -a status

# install AWS inspector
curl -O https://inspector-agent.amazonaws.com/linux/latest/install
sudo bash install

