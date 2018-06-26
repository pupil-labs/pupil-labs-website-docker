#!/bin/bash
echo -e "\n##########\nUpdating apt-get\n##########\n"
apt-get -yq update
echo -e "\n##########\nInstalling apt packages\n##########\n"
apt-get install -yq --no-install-recommends \
software-properties-common gpg-agent apt-utils git curl imagemagick graphicsmagick \
python2.7-dev
# save space and clean up apt after install
echo -e "\n##########\nCleaning up apt after install to reduce image size\n##########\n"
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*