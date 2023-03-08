
sudo chmod -R 777 /home/ec2-user/nodejs-aws-codedeploy-pipeline

echo 'application start is being ran' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

echo 'run application_start.sh: ' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

cd /home/ec2-user/nodejs-aws-codedeploy-pipeline
echo 'pm2 restart nodejs-express-app' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
sudo pm2 restart nodejs-express-app >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log