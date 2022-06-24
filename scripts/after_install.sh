#!/bin/bash

echo 'update ubuntu permissions'
chown ubuntu:ubuntu -R /home/ubuntu/nodejs-server-cicd

echo 'cd /home/ubuntu/nodejs-server-cicd'
cd /home/ubuntu/nodejs-server-cicd

echo 'npm install'
npm install
