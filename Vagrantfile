# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.provision :shell, :path => "install_meteor_dependencies.sh"
  config.vm.provision :shell, :privileged => false, :path => "install_meteor.sh"
  config.vm.provision :shell, :path => "install_ttyjs.sh"
  config.vm.network :forwarded_port, host: 3000, guest: 3000
  config.vm.network :forwarded_port, host: 8080, guest: 8080
end
