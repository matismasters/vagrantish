#!/bin/bash

echo "- Installing NPM -"
sudo apt-get install -y npm
echo "- Finished NPM install -"

echo "- Installing N -"
sudo npm install -g n
echo "- Finished N install -"

echo "- Installing Node latest stable version -"
sudo n stable
echo "- Finished latest Node install -"

echo "- Node Version -"
node -v

echo "- Latest Node & NPM installed -"
