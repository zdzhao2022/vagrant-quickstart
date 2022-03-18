#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless

cd /usr/local
sudo su -
cp /vagrant/apache-tomcat-8.5.77.tar.gz .
#wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.77/bin/apache-tomcat-8.5.77.tar.gz --no-check-certificate
tar -xzvf apache-tomcat-8.5.77.tar.gz
ln -s apache-tomcat-8.5.77 tomcat

cp /vagrant/tomcat8 /etc/init.d/tomcat8
chmod 755 /etc/init.d/tomcat8
update-rc.d tomcat8 defaults
/usr/local/tomcat/bin/startup.sh
#service tomcat8 start
