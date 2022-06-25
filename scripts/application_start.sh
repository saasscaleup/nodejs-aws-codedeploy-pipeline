#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/nodejs-server-cicd/deploy.log

echo 'pm2 restart nodejs-server' >> /home/ec2-user/nodejs-server-cicd/deploy.log
pm2 restart nodejs-app >> /home/ec2-user/nodejs-server-cicd/deploy.log