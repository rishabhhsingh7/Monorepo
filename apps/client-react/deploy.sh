#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.1/bin

cd /home/ubuntu/monorepo
sudo git pull origin master
yarn install 
yarn build
pm2 stop react
pm2 start npm --name "react" -- run "start:react"