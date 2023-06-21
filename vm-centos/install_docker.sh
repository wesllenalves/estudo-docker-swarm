#!/bin/bash

sudo yum update -y
sudo yum install -y curl git wget nano vim

#instalando docker-ce
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker
# sudo groupadd docker
# sudo usermod -aG docker $USER
sudo sudo service docker start
sudo chmod 777 -R /var/run/docker.sock

#intalando doker-composer
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

