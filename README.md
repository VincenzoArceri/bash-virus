# Bash virus 
## Requirements
- Vagrant [(https://www.vagrantup.com/downloads.html)]((https://www.vagrantup.com/downloads.html))

## Creating the VM
```
$ git clone https://github.com/VincenzoArceri/bash-virus.git
$ cd bash-virus\test-virus
$ vagrant up
$ vagrant ssh
```

The VM contains:
- `test/virus.sh`: a copy of the bash virus, the same present at the master
- `test/testo.txt`: an example of an infected file
- `test/dummy.sh`: an example of an uninfected file
- `test/test.sh`: an example of an uninfected and uninfectable file

## Execute the virus
Launch commands into the VM
```
$ cd test
$ ./virus.sh
```
