#!/bin/bash

echo "- Installing Ruby and dependencies -"

sudo apt-get install -y git autoconf build-essential libreadline-dev libssl-dev libyaml-dev zlib1g-dev libffi-dev libpq-dev
sudo apt-get install -y ruby-full

echo "- Finished Ruby and dependencies install -"

echo "- Installing Bundler -"
sudo gem install bundler
echo "- Finished Bundler install"
