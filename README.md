# Creating a development environment

To ensure we are all working within the same environment, we use Vagrant to provision development environments.

To begin, go to the [downloads](http://www.vagrantup.com/downloads) page and install the correct version of Vagrant for your machine. 

We're also going to be using VirtualBox, so go to the [downloads](https://www.virtualbox.org/) page and install it if you haven't already done so.

First, create a directory where your want your Vagrant files to live.

	$ cd ~/Documents
	$ mkdir Reviewify-AWS
	$ cd Reviewify-AWS

Now we create the Vagrantfile:
	
	$ vagrant init

Download a virtual machine box:

	$ vagrant box add hashicorp/precise32

Modify the Vagrantfile that was created so that it only reads:

	Vagrant.configure(2) do |config|
      config.vm.box = "hashicorp/precise32"
    end

Now get the virtual machine running:

	$ vagrant up

And ssh into the machine from the directory:

	$ vagrant ssh

If everything works, `exit` out of your virtual machine and then run:

	$ vagrant destroy

Now, download the updated Vagrantfile from the repo and run `vagrant up` again and it should install all of the dependencies you need to get up and running. 