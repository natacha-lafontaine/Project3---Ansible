#!/bin/bash

#install tomcat
echo "*** Installing tomcat"
sudo apt-get update --fix-missing
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz 
tar -zvxf apache-tomcat-9.0.65.tar.gz
echo "*** Completed Installing tomcat"