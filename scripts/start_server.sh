#!/bin/bash

LOG=/log/start.log
chmod -R 777 /home/ec2-user/tools/apache-tomcat-8.5.75/bin/startup.sh
./startup.sh
echo "Starting music app..." >> $LOG
