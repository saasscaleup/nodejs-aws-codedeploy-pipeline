# nodejs-aws-codedeploy-pipeline

How to set ci/cd for nodejs app with aws codeDeploy and aws codePipeline

<a href="https://www.buymeacoffee.com/scaleupsaas"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=scaleupsaas&button_colour=BD5FFF&font_colour=ffffff&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00" /></a>

## Installation instructions

### 1. Launch amazon linux server in aws

### 2. ssh to linux to install packages

```sh
ssh -i <key.pem> ec2-user@<ip-address> -v
```

### 3. Update and Upgrade linux machine and install node, nvm and pm2

```sh
sudo yum update
```

```sh
sudo yum upgrade
```

```sh
sudo yum install -y git htop wget
```

#### 3.1 install node

To **install** or **update** nvm, you should run the [install script][2]. To do that, you may either download and run the script manually, or use the following cURL or Wget command:
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
Or
```sh
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

Running either of the above commands downloads a script and runs it. The script clones the nvm repository to `~/.nvm`, and attempts to add the source lines from the snippet below to the correct profile file (`~/.bash_profile`, `~/.zshrc`, `~/.profile`, or `~/.bashrc`).

#### 3.2 Copy & Past (each line separately)
<a id="profile_snippet"></a>
```sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

#### 3.3 Verify that nvm has been installed

```sh
nvm --version
```

#### 3.4 Install node

```sh
nvm install --lts # Latest stable node js server version
```

#### 3.5 Check nodejs installed
```sh
node --version
```

#### 3.6 Check npm installed
```sh
npm -v
```

### 4. Clone nodejs-aws-codedeploy-pipeline repository

```sh
cd /home/ec2-user
```

```sh
git clone https://github.com/saasscaleup/nodejs-aws-codedeploy-pipeline.git
```

### 5. Run node app.js  (Make sure everything working)

```sh
cd nodejs-aws-codedeploy-pipeline
```

```sh
npm install
```

```sh
node app.js
```

### 6. Install pm2
```sh
npm install -g pm2 # may require sudo
```

### 7. Set node, pm2 and npm available to root

```sh
sudo ln -s "$(which node)" /sbin/node
```
```sh
sudo ln -s "$(which npm)" /sbin/npm
```
```sh
sudo ln -s "$(which pm2)" /sbin/pm2
```

### 8 Starting the app as sudo (Run nodejs in background and when server restart)
```sh
sudo pm2 start app.js --name=nodejs-express-app
```
```sh
sudo pm2 save     # saves the running processes
                  # if not saved, pm2 will forget
                  # the running apps on next boot
```

#### 8.1 IMPORTANT: If you want pm2 to start on system boot
```sh
sudo pm2 startup # starts pm2 on computer boot
```

### 9. Install aws code deploy agent 
```sh
sudo yum install -y ruby 
```

```sh
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
```

```sh
chmod +x ./install
```
```sh
sudo ./install auto
```
```sh
sudo service codedeploy-agent start
```

### 10. Continue in AWS console...

Watch the rest of the youtube video...


## Support 🙏😃
  
 If you Like the tutorial and you want to support my channel so I will keep releasing amzing content that will turn you to a desirable Developer with Amazing Cloud skills... I will realy appricite if you:
 
 1. Subscribe to My youtube channel and leave a comment: http://www.youtube.com/@ScaleUpSaaS?sub_confirmation=1
 2. Buy me A coffee ❤️ : https://www.buymeacoffee.com/scaleupsaas

Thanks for your support :)

<a href="https://www.buymeacoffee.com/scaleupsaas"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=scaleupsaas&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff" /></a>
