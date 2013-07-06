##Coursera's Startup Engineering Vagrant Environment

This is an easy to install Vagrant environment for Coursera's Startup Engineering program students who can't get an AWS account for cloud development.

The environment already have the [modfications introduced by the teachers](https://d396qusza40orc.cloudfront.net/startup/lecture_slides%2Flecture4b-developer-environment.pdf) for the **Shell** and the applications including **Emacs**, also, the environment include a **NGINX** web server so you can test your work in a close to real environment.

###Instalation

1. Install the latest version of [Vagrant](http://downloads.vagrantup.com/tags/v1.2.2) in your computer.

2. Clone this repository into your project directory with this commmand:

	git clone git://github.com/davegomez/startup-vagrant.git

Or download it directly from [GitHub](http://github.com/davegomez/startup-vagrant).

###Usage

**Note:** this tutorial is setup for 64bit systems, if you have a 32bit system you have to replace number 64 to 32 in every file.

1. Install and configure your Vagrant environmet using these commands on your terminal or command line window inside the project directory.

	vagrant box add precise64 http://files.vagrantup.com/precise64.box
	vagrant up

2. Get in the virtual environment using the command `vagrant ssh` to rebuild the VBoxAdditions package using this command:

	sudo /etc/init.d/vboxadd setup

3. Get out of the virtual environment using the command `exit`.

4. Change your `Vagrantfile` file name to `Vagrantfile.bak`.

5. Change your `Vagrantfile-init` file name to `Vagrantfile`.

6. Reload the Vagrant environment using the command `vagrant reload`.

7. Finally we can test if everything is working putting this address `127.0.0.1:8989` in our favorite web browser.

###Recomendation

Learn how to use Vagrant enviroment from the command line with the [project documentation](http://docs.vagrantup.com/v2/cli/index.html).