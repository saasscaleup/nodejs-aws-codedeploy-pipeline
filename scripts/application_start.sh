#!/bin/bash

echo 'run application_start.sh: ' >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'cd /home/ubuntu/nodejs-server-cicd' >> /home/ubuntu/nodejs-server-cicd/deploy.log
cd /home/ubuntu/nodejs-server-cicd >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'killall node app.js' >> /home/ubuntu/nodejs-server-cicd/deploy.log
if pgrep node; then killall node; fi >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'npm start' >> /home/ubuntu/nodejs-server-cicd/deploy.log
npm start >> /home/ubuntu/nodejs-server-cicd/deploy.log