  
# -*- mode: ruby -*-
# vim: set ft=ruby :

MACHINES = {
  :"server" => {
    :box_name => "centos/7",
    :ip_addr => "172.20.10.50",
    :memory => "1024",
    :shell => "server.sh",
    :ansible => "server.yml"
  },
  :"web" => {
    :box_name => "centos/7",
    :ip_addr => "172.20.10.51",
    :memory => "512",
    :shell => "web.sh",
    :ansible => "web.yml"
  }
}

Vagrant.configure("2") do |config|

  MACHINES.each do |boxname, boxconfig|

    config.vm.define boxname do |box|
      box.vm.box = boxconfig[:box_name]
      box.vm.host_name = boxname.to_s
      box.vm.network "private_network", ip: boxconfig[:ip_addr]
      box.vm.provider "virtualbox" do |vb|
        vb.name = boxname.to_s
        vb.memory = boxconfig[:memory]
        end
      box.vm.provision "shell", path: boxconfig[:shell]
      #box.vm.provision "ansible_local" do |ansible|
        #ansible.playbook = boxconfig[:ansible]
        #ansible.inventory_path = "hosts"
        #box.vm.provision "shell", path: "shell.sh"
        #end
    end
  end
end