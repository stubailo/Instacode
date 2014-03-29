# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"

  # install random packages from apt-get like git and curl
  config.vm.provision :shell, :path => "packages.sh"

  # install meteor
  config.vm.provision :shell, :privileged => false, :path => "meteor.sh"
   
  # npm and stuff that depends on npm, like meteorite and ttyjs
  config.vm.provision :shell, :path => "npm.sh"

  # ttyjs startup script
  config.vm.provision :shell, :path => "startup.sh"

  config.vm.network :forwarded_port, host: 3000, guest: 3000
  config.vm.network :forwarded_port, host: 8080, guest: 8080
end
