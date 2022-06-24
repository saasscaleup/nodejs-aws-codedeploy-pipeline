#!/bin/bash

echo 'run application_stop.sh: ' >> /home/ubuntu/nodejs-server-cicd/deploy.log

echo 'killall node' >> /home/ubuntu/nodejs-server-cicd/deploy.log
killall node || echo 'process not running' >> /home/ubuntu/nodejs-server-cicd/deploy.log
