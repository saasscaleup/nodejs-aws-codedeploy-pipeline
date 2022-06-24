#!/bin/bash

echo 'cd /home/ubuntu/nodejs-server-cicd' >> /home/ubuntu/nodejs-server-cicd/deploy.log
cd /home/ubuntu/nodejs-server-cicd >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'node app.js &' >> /home/ubuntu/nodejs-server-cicd/deploy.log
node index.js > hello.log 2> error.log & 
