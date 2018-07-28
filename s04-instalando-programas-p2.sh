#!/bin/bash

echo "Instalando VirtualBox"
apt-get update
apt-get install virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso virtualbox-guest-dkms virtualbox-guest-utils -y

echo "Instalando Steam"
apt-get install steam -y

echo "Instalando o Visual Studio Code"
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
apt update; apt install code

echo "Limpando todo os pacotes"
sudo apt-get -f install && sudo apt-get autoremove && sudo apt-get -y autoclean && sudo apt-get -y clean
