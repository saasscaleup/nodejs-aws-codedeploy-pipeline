#!/bin/bash

echo 'run application_start.sh: ' >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'cd /home/ubuntu/nodejs-server-cicd' >> /home/ubuntu/nodejs-server-cicd/deploy.log
cd /home/ubuntu/nodejs-server-cicd >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'app.js > hello.log 2> error.log &' >> /home/ubuntu/nodejs-server-cicd/deploy.log
node app.js > hello.log 2> error.log & 
