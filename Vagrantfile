# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.define "mongo" do |e|
    e.vm.network :forwarded_port, guest: 27017, host: 27017
    e.vm.network :forwarded_port, guest: 27018, host: 27018
    e.vm.network :forwarded_port, guest: 27019, host: 27019
    e.vm.network :forwarded_port, guest: 28017, host: 28017
    e.vm.provision :shell, :path => "mongo.sh"
  end

end
