#!/bin/bash
yum install nginx -y
systemctl start nginx
systemctl enable nginx
echo "Auto Scaling Server" > /usr/share/nginx/html/index.html
