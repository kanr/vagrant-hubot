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

#

#
