Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.synced_folder '.', '/home/vagrant/sync', disabled: true
  config.ssh.forward_agent = true
  config.vm.provision "shell", path: "provision.sh"
end
