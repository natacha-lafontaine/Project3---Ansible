#!/bin/bash

#install java
sudo apt-get update
sudo apt-get install default-jdk -y

#install tomcat
echo "*** Installing tomcat"
sudo apt-get update
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz 
tar -zvxf apache-tomcat-9.0.65.tar.gz
echo "*** Completed Installing tomcat"

#start tomcat
cd apache-tomcat-9.0.65/bin
chmod +x startup.sh
chmod +x shutdown.sh
./startup.sh