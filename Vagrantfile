Vagrant.configure(2) do |config|
 config.vm.box = "generic/ubuntu2204"

 config.vm.provider "virtualbox" do |v|
   v.memory = 1024
   v.cpus = 1
 end

 config.vm.define "ubuntutest" do |ubuntutest|
   ubuntutest.vm.network "private_network", ip: "192.168.50.10", virtualbox__intnet: "net1"
   ubuntutest.vm.network "public_network", type: "dhcp"
   ubuntutest.vm.synced_folder "vmshare/", "/vagrant"
   ubuntutest.vm.hostname = "ubuntutest"

 end


end
