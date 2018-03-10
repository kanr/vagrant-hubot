#!/bin/bash

### hubot configuration
#npmmirror=$1
#OWNER= "vagrant"
#NAME= "myhubot"
#DESCRIPTION= "testing 1 2 3"
#DEFAULT_INSTALLATION_DIR="/vagrant"


#apt-get install -y nodejs

### install the hubot generator
#print_status "installing the hubot generator for you ..."
#print_status "be patient and wait. it will take some time to install the generator ..."
npm install -g generator-hubot 

### make a new directory, and generate a new instance of hubot in it
#print_status "creating an instance of hubot for you ..."
mkdir -p myhubot
#sudo chown vagrant:vagrant $DEFAULT_INSTALLATION_DIR

cd myhubot
yo hubot --owner="vagrant" --NAME="myhubot" --description="testing 1 2 3 4" --adapter=campfire --defaults
#print_status "successfully creating a hubot instance with NAME: $NAME"
#print_status "Now you can login/ssh the instance, and type 'cd $DEFAULT_INSTALLATION_DIR; bin/hubot'"
#print_status "And then you can start your hubot journey with '$NAME help'"
