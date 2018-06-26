#!/bin/bash
echo -e "\n##########\nInstalling node and packages\n##########\n"
. /root/.nvm/nvm.sh
nvm install $NODE_VERSION
nvm alias default $NODE_VERSION
nvm use default
npm install -g gulp-cli@2.0.1
npm install -g wintersmith@2.4.1
npm install