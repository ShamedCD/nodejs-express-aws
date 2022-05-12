#!/bin/bash

# Set permissions
echo "Setting permissions for express-app directory..."
sudo chmod -R 777 /home/ec2-user/express-app
cd /home/ec2-user/express-app

# Add npm and node to path
echo "Setting PATH configuration..."
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

# Install node modules
echo "Installing node modules..."
npm install

# Start the app in the background
echo "Starting the app..."
node app.js > app.out.log 2> app.err.log < /dev/null & 