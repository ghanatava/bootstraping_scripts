#!/bin/bash
sudo apt-get update -y
sudo apt-get install default-jdk -y
sudo apt-get install default-jre -y
sudo apt install unzip

mkdir /prod
cd /prod 
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.17/bin/apache-tomcat-10.1.17.zip
unzip apache-tomcat-10.1.17.zip && rm apache-tomcat-10.1.17.zip

chmod +x /prod/apache-tomcat-10.1.17/bin/startup.sh
chmod +x /prod/apache-tomcat-10.1.17/bin/shutdown.sh
chmod +x /prod/apache-tomcat-10.1.17/bin/catalina.sh

chmod 766 /prod/apache-tomcat-10-1.17/logs
chmod 777 /prod/apache-tomcat-10-1.17/webapps

sh "/prod/apache-tomcat-10.1.17/bin/startup.sh"

