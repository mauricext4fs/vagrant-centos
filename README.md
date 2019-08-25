# vagrant-centos
Centos Vagrant recipes for a development machine

# Run

To run this machine you must enable the Virtual Box Guest Plugin: 

```sh
vagrant plugin install vagrant-vbguest
```

Then just do 

```sh
vagrant up
vagrant ssh

# Update

```sh
vagrant up
vagrant package
vagrant cloud publish -r mauricext4fs/centos <version> virtualbox package.box
```

