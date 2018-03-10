#!/bin/bash
#Author: Connor Aitken


apt-get -y update

curl -sL https://deb.nodesource.com/setup | sudo -E bash -


#check npm package status, if package is installed: return 0
# else
#    install dependencies
#    create sym link to nodejs binary (see nodejs conflict with node module)
dpkg -s npm &>/dev/null ||{
  curl -sL https://deb.nodesource.com/setup | sudo -E bash -
  apt-get -y install nodejs npm yo
  ln -s /usr/bin/nodejs /usr/bin/node
}

dpkg -s yo &>/dev/null ||{
  apt-get -y install  yo
}

#check if hubot is instaled, if yes: return 0
# else
#    install hubot and dependencies
#command -v hubot &>/dev/null ||{
#  npm install -g hubot coffee-script yo generator-hubot
#}
