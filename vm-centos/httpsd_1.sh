#!/bin/bash

sudo yum install httpd -y
sudo systemctl enable httpd && sudo systemctl start httpd
sudo echo "sou back-end 1" >> /var/www/html/index.html