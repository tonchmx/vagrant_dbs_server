# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.name = "DBs Server"
  end

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "dbs.server"

  config.vm.network :private_network, ip: "192.168.56.101"
end