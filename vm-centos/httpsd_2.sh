#!/bin/bash

sudo yum install httpd -y
sudo systemctl enable httpd && sudo systemctl start httpd
sudo echo "sou back-end 2" >> /var/www/html/index.html