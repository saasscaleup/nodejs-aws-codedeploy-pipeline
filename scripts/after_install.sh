#!/bin/bash
echo 'run after_install.sh: ' >> /home/ubuntu/nodejs-server-cicd/deploy.log

# echo 'update ubuntu permissions' >> /home/ubuntu/nodejs-server-cicd/deploy.log
# chown ubuntu:ubuntu -R /home/ubuntu/nodejs-server-cicd >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'cd /home/ubuntu/nodejs-server-cicd' >> /home/ubuntu/nodejs-server-cicd/deploy.log
cd /home/ubuntu/nodejs-server-cicd >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'npm install' >> /home/ubuntu/nodejs-server-cicd/deploy.log 
npm install >> /home/ubuntu/nodejs-server-cicd/deploy.log
