#!/bin/bash

tmp_dir="/tmp"
version="2.4.1"
minor_version="2.3"
ruby_version="ruby-$version"

echo "- Installing Ruby and dependencies -"

sudo apt-get install -y git autoconf build-essential libreadline-dev libssl-dev libyaml-dev zlib1g-dev libffi-dev libpq-dev

mkdir -p "$tmp_dir"
cd "$tmp_dir"

wget "http://cache.ruby-lang.org/pub/ruby/$minor_version/$ruby_version.tar.gz"
tar -xvzf $ruby_version.tar.gz
cd $ruby_version

./configure --disable-install-doc
make --jobs `nproc`
sudo make install

cd ..
rm $ruby_version.tar.gz
rm -rf $ruby_version

echo "- Finished Ruby and dependencies install -"

echo "- Installing Bundler -"
gem install bundler
echo "- Finished Bundler install"
