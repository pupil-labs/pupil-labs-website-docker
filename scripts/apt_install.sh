#!/bin/bash
echo -e "\n##########\nUpdating apt-get\n##########\n"
apt-get -yq update
echo -e "\n##########\nInstalling apt packages\n##########\n"
apt-get install -yq --no-install-recommends \
software-properties-common gpg-agent apt-utils git curl imagemagick graphicsmagick \
python2.7-dev
echo -e "\n##########\nAdding yarn sources\n##########\n"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get -yq update