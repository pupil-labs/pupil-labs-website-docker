#!/bin/bash
echo -e "\n##########\nInstalling node and packages\n##########\n"
. /root/.nvm/nvm.sh
nvm install $NODE_VERSION
nvm alias default $NODE_VERSION
nvm use default
echo -e "\n##########\nInstalling yarn\n##########\n"
apt-get remove -yq cmdtest
apt-get install -yq --no-install-recommends yarn
echo -e "\n##########\nInstalling dependencies with yarn\n##########\n"
yarn
# save space and clean up apt after install
echo -e "\n##########\nCleaning up apt after install to reduce image size\n##########\n"
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*