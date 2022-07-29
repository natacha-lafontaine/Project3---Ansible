#! /bin/bash

#install python
sudo apt-get update
sudo apt-get install python-minimal -y
sudo apt-get install python3 -y

#install ansible
sudo apt-get update
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y

#install java
sudo apt-get update
sudo apt-get install default-jdk -y

#install maven
sudo apt-get update
sudo apt-get install maven -y

#install jenkins
sudo apt-get update
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt install jenkins -y

#start jenkins
sudo systemctl start jenkins