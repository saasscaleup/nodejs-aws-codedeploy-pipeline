#!/bin/bash

echo 'update ubuntu permissions' >> deploy.log
chown ubuntu:ubuntu -R /home/ubuntu/nodejs-server-cicd >> deploy.log

echo 'cd /home/ubuntu/nodejs-server-cicd' >> deploy.log
cd /home/ubuntu/nodejs-server-cicd >> deploy.log

echo 'npm install' >> deploy.log 
npm install >> deploy.log
