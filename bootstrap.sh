#!/bin/bash

# Puppet is preinstalled. 
# We need to symlink the modules dir to the one synced to the VM (check Vagrantfile)
rmdir /etc/puppet/modules
ln -s /opt/puppet-modules /etc/puppet/modules

# Add here any steps you need to take to prepare your VM.
# If for example you'd like to install a local Debian package:
# sudo dpkg -i /vagrant/*.deb

# If you need the @fqdn fact, you will need to do something like this
# one can of course set any domain name
#echo 'localhost.localdomain' > /etc/hostname
#echo -e '127.0.1.1\tlocalhost.localdomain >> /etc/hosts
#hostname localhost

# After you've done preparing your VM, run puppet 
sudo puppet apply --modulepath=/opt/puppet-modules/ /vagrant/mypuppet.pp

