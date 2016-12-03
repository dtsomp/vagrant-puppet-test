# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version. 

Vagrant.configure(2) do |config|

  # BOX

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

    
  # SYNCED FOLDERS

  # The current folder is by default synced as /vagrant on the VM.
  # My local copy of puppet-modules will be available in /opt/puppet-modules on the VM.
  config.vm.synced_folder "/FULL/PATH/TO/puppet-modules", "/opt/puppet-modules"

  # PORT FORWARDING 
 
  #  config.vm.network "forwarded_port", guest: 80, host: 8080 #for Kibana3
  #  config.vm.network "forwarded_port", guest: 5601, host: 5601 #for Kibana2
  #  config.vm.network "forwarded_port", guest: 9200, host: 9200 #for Elasticsearch
  config.vm.network :forwarded_port, guest: 8080, host: 8080

  # VIRTUAL HARDWARE

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
     vb.cpus = "2"
  end

  # PROVISIONING
  
  # Run bootstrap.sh when the VM is up.
  config.vm.provision :shell, path: "bootstrap.sh"

end
