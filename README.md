# Lancio virus all'interno della macchina virtuale
## Requisiti
- Vagrant [(https://www.vagrantup.com/downloads.html)]((https://www.vagrantup.com/downloads.html))

## Creazione macchina virtuale
Spostarsi all'interno della cartella `test-virus` e lanciare `vagrant up`. Per collegarsi lanciare `vagrant ssh` dalla cartella `test-virus`
La cartella `test` viene montata all'interno della cartella `test` della macchina virtuale.

# Modifica al virus
Copiare il file `virus.sh` all'interno della cartella `test` per poterlo eseguire all'interno della macchina virtuale.
