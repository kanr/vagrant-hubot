#!/bin/bash
#Author: Connor Aitken


apt-get -y update
#check npm package status, if package is installed: return 0
# else
#    install dependencies
#    create sym link to nodejs binary (see nodejs conflict with node module)
dpkg -s npm &>/dev/null ||{
  apt-get -y install nodejs npm
  ln -s /usr/bin/nodejs /usr/bin/node
}

#check if hubot is instaled, if yes: return 0
# else
#    install hubot and coffee-script
command -v hubot &>/dev/null ||{
  npm install -g hubot coffee-script
}
