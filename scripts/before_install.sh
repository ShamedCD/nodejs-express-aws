#!/bin/bash

# Install nvm, node and npm
echo "Downloading nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
. ~/.nvm/nvm.sh
echo "Installing node 16..."
nvm install 16

# Create the working directory if doesn't exists
DIR="home/ec2-user/express-app"
if [ -d "$DIR" ]; then
    echo "${DIR} already exists"
else
    echo "Creating ${DIR} directory..."
    mkdir ${DIR}
fi
