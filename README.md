# Vagrant for testing Puppet

## Requirements

* Virtualbox
* Vagrant

Installation instructions for these differ from OS to OS.
Please check their documentation.

This is also assuming that you have a copy of puppet-modules in a different dir.

## Getting started

### 1. Vagrantfile

Edit `Vagrantfile` and update according to your setup.

* sync folders:

    replace `/FULL/PATH/TO/puppet-modules` with the correct path to your working dir of puppet-modules.
* Virtual hardware:

    adjust memory and cpu  (optional)
* Forwarded ports:

    add/edit port forwarding according to the services you're going to run on the VM (optional)

### 2. bootstrap.sh

`bootstrap.sh` is executed after the VM has finished booting.

If you need to install software (eg git, java) before running puppet, this is where to do it.
Leave the puppet run for last, unless you have reasons ;)

### 3. mypuppet.pp

The last step in `bootstrap.sh` is to run puppet and apply this manifest.

Since this is directly applied, there is no need to define a host to run it on.
Just declare the classes you're going to test and let it run.


### 4. Run it!

After you've configured everything, you can start the VM.

In Ubuntu, you would use something like this:

    vagrant up          # Bring the VM up.
                        # Should set up everything, run puppet and produce errors.
                        # If you are on a Mac, you need to remove /opt/vagrant/embedded/bin/curl
                        # or the box vill not be downloaded.

    vagrant provision   # optional step if `up´ fails for some reason
                        # could save from a `destroy -f and up´.

    vagrant ssh         # Connect to the VM and examine what you've done.

    vagrant destroy -f  # Takes the VM down and deletes all changes.
                        # Next time you run `vagrant up`, it'll be recreated from the original image.




