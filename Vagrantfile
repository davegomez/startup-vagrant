Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.provision :shell, :path => "setup.sh"
  config.vm.network :forwarded_port, host: 8989, guest: 80
end