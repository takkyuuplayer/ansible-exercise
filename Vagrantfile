# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.33.102"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.become = true
    ansible.install_mode = "pip"
    ansible.playbook = "site.yml"
    ansible.version = "latest"
  end
end
