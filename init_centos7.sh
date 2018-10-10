#! /bin/sh

yum update -y 
yum install git epel-release -y

systemctl stop firewalld
setenforce 0

systemctl restart docker
systemctl enable docker

chmod +x /etc/rc.d/rc.local
/etc/rc.d/rc.local start

mkdir /app

