#!/bin/bash

echo 'run application_start.sh: ' >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'pm2 restart nodejs-server' >> /home/ubuntu/nodejs-server-cicd/deploy.log
pm2 restart nodejs-app >> /home/ubuntu/nodejs-server-cicd/deploy.log