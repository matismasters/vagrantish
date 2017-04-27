#!/bin/bash

echo "- Installing PhantomJS dependencies -"
sudo apt-get install -y build-essential chrpath libssl-dev libxft-dev
sudo apt-get install -y libfreetype6 libfreetype6-dev
sudo apt-get install -y libfontconfig1 libfontconfig1-dev
echo "- Finished PhantomJS dependencies install -"

echo "- Installing PhantomJS -"
PHANTOM_VERSION="phantomjs-2.1.1"

PHANTOM_JS="$PHANTOM_VERSION-linux-x86_64"

sudo apt-get -y install build-essential chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev

cd ~
curl -O -L https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
tar xvjf $PHANTOM_JS.tar.bz2

if [ -d /usr/local/share/$PHANTOM_JS ] ; then
  sudo rm -rf /usr/local/share/$PHANTOM_JS
fi
sudo mv -f $PHANTOM_JS /usr/local/share/
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/share/phantomjs
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin/phantomjs
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/bin/phantomjs
rm ~/$PHANTOM_JS.tar.bz2

echo "Finished PhantomJS install -"
