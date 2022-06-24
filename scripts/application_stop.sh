#!/bin/bash

echo 'killall node' > /home/ubuntu/nodejs-server-cicd/deploy.log
killall node >> /home/ubuntu/nodejs-server-cicd/deploy.log
