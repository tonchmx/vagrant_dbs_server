# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.name = "DBs Server"
  end

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "dbs.server"

  config.vm.network :private_network, ip: "192.168.56.101"
  config.vm.network :forwarded_port, guest: 27017, host: 27017 #mongo
  config.vm.network :forwarded_port, guest: 3306, host: 3306 #mysql

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "__provision__/manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "__provision__/modules"
  end
end