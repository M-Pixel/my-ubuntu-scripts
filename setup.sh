#!/bin/bash
echo "Sudoing..."
sudo apt-get update
sudo apt-get install -y nodejs npm
npm install -g coffee-script
chmod +x update-scripts.sh
mv update-scripts.sh update-scripts
chmod +x run.coffee
mv run.coffee run
npm install
exit 0