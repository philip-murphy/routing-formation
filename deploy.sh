#!/bin/bash

wget https://raw.githubusercontent.com/costacruise/routing-formation/master/haproxy.cfg -O /etc/haproxy/haproxy.cfg
sed -i -- 's/ADMINUSER/AdminUser/g' /etc/haproxy/haproxy.cfg 
sed -i -- 's/ADMINPASSWORD/AdminPassword/g' /etc/haproxy/haproxy.cfg 
sed -i -- 's/S3BUCKET/S3Bucket/g' /etc/haproxy/haproxy.cfg 
sed -i -- 's/S3REGION/S3Region/g' /etc/haproxy/haproxy.cfg 

service haproxy restart
