#!/usr/bin/bash

### Adapter le script aux nouvelles versions du pilote (URL, nom de l’archive, etc.)

# Se déplacer dans un répertoire temporaire
cd $(mktemp -d)

## Installation du pilote de l’imprimante
# Installer le paquet lsb
sudo apt install -y lsb
# Télécharger le paquet du pilote
wget https://download3.ebz.epson.net/dsc/f/03/00/13/43/81/ba6851ef53476ebdf3ee36600067ce4a3c81c032/epson-inkjet-printer-escpr_1.7.18-1lsb3.2_amd64.deb
# Installer le paquet du pilote
sudo apt install ./epson-inkjet-printer-escpr_1.7.18-1lsb3.2_amd64.deb

## Installation du pilote du scanner
# Télécharger l’archive du pilote
wget https://download2.ebz.epson.net/epsonscan2/common/deb/x64/epsonscan2-bundle-6.6.40.0.x86_64.deb.tar.gz
# Extraire l’archive
tar -xvf epsonscan2-bundle-6.6.40.0.x86_64.deb.tar.gz
# Rendre le script d’installation exécutable
chmod +x epsonscan2-bundle-6.6.40.0.x86_64.deb/install.sh
# Exécuter le script d’installation
./epsonscan2-bundle-6.6.40.0.x86_64.deb/install.sh
# Supprimer le répertoire de l’installeur

echo 'Installation terminée.'
echo 'Utiliser le « Numérisateur de documents » pour scanner.'
