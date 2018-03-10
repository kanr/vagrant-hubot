#vagrant file
#Author: Connor Aitken

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "hubot-dev"
  config.vm.provision "shell", path: "provision.sh"

  config.vm.define "hubot" do |hubot|
    hubot.vm.provision "shell", path: "hubot.sh"
  end 
end
