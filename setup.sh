#!/bin/bash
echo "Sudoing..."
sudo apt-get update
sudo apt-get install -y nodejs npm
sudo npm install -g coffee-script
chmod +x update-scripts.sh
mv update-scripts.sh update-scripts
chmod +x run.coffee
mv run.coffee run
npm install
ln -s /usr/bin/nodejs /usr/bin/node
exit 0
