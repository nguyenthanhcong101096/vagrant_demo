# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.10.5"
  config.vm.hostname = "demo"
  config.vm.synced_folder '.', '/data'

  config.vm.provider "virtualbox" do |vb|
    vb.name = "demo"
    vb.cpus   = 2
    vb.memory = "1024"
  end

  config.vm.provision "shell", privileged: false, run: "always", path: "provision/necessary.sh"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provision/playbook.yml"
    ansible.verbose  = true
  end
end
