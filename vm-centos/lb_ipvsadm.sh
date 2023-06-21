#!/bin/bash

sudo modprobe ip_vs
sudo yum install ipvsadm -y
sudo echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
sudo echo "net.ipv4.ip_nonlocal_bind = 1" >> /etc/sysctl.conf
sudo sysctl -p
sudo touch /etc/sysconfig/ipvsadm
sudo ipvsadm -A -t 192.168.1.129:80 -s rr
sudo ipvsadm -a -t 192.168.1.129:80 -r 192.168.1.121:80 -m
sudo ipvsadm -a -t 192.168.1.129:80 -r 192.168.1.122:80 -m