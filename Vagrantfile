# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64" # platilla de la máquina
  config.vm.define "web" do |web| # el segundo web es una variable que se pone al principio del resto de cosas
      web.vm.hostname = "web.izv.test"
      web.vm.network "private_network" , ip: "192.168.56.10"
      web.vm.provision "shell" , path:"provision-web.sh"
end  #web

config.vm.define "db" do |db|
    db.vm.hostname = "db.izv.test"
    db.vm.network "private_network" , ip: "192.168.56.20"
    db.vm.provision "shell" , path:"provision-db.sh"


end # db
end # Vagrant.configure
