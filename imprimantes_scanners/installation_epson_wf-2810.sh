#!/usr/bin/bash

### Adapter le script aux nouvelles versions du pilote (URL, nom de l'archive, etc.)

## Installation du pilote de l'imprimante
# Installer le paquet lsb
sudo apt install lsb
# Télécharger le paquet du pilote
https://download3.ebz.epson.net/dsc/f/03/00/13/43/81/ba6851ef53476ebdf3ee36600067ce4a3c81c032/epson-inkjet-printer-escpr_1.7.18-1lsb3.2_amd64.deb
# Installer le paquet du pilote
sudo apt install ./epson-inkjet-printer-escpr_1.7.18-1lsb3.2_amd64.deb
# Supprimer le paquet d'installation
rm ./epson-inkjet-printer-escpr_1.7.18-1lsb3.2_amd64.deb

## Installation du pilote du scanner
# Télécharger l'archive du pilote
wget https://download2.ebz.epson.net/epsonscan2/common/deb/x64/epsonscan2-bundle-6.6.40.0.x86_64.deb.tar.gz
# Extraire l'archive
tar -xvf epsonscan2-bundle-6.6.40.0.x86_64.deb.tar.gz
# Lancer le script d'installation
sh epsonscan2-bundle-6.6.40.0.x86_64.deb/install.sh
# Supprimer le répertoire de l'installeur
rm -r ./epsonscan2-bundle-6.6.40.0.x86_64.deb
# Supprimer l'archive de l'installeur
rm ./epsonscan2-bundle-6.6.40.0.x86_64.deb.tar.gz

### Utiliser le "Numérisateur de documents" pour scanner
