#!/usr/bin/bash

echo 'Ce script doit être lancé avant ET après la mise à niveau.'
echo 'Taper 1 pour lancer la partie AVANT la mise à niveau,'
echo 'Taper 2 pour lancer la partie APRÈS la mise à niveau.'
read -r un_deux


if [[ $un_deux == 1 ]] ; then
  echo 'Lancement du script de pré-mise à niveau.'
  sleep 5
  sudo mintupdate-cli -ry upgrade
  sudo mintupdate-cli -ry upgrade
  sudo apt autoremove -y
  gsettings set org.cinnamon.desktop.session idle-delay 0
  cat << EOF
Mettre à jour les éléments suivants :
- Thèmes
- Applets
- Desklets
- Extensions

Puis redémarrer l’ordinateur, faire la mise à niveau, et relancer le script.
EOF
fi

if [[ $un_deux == 2 ]] ; then
  sudo sed -i s,http://packages.linuxmint.com,https://mirror.cyberbits.eu/linuxmint/packages,g /etc/apt/sources.list.d/official-package-repositories.list
  sudo sed -i s,http://archive.ubuntu.com/ubuntu,https://fr.archive.ubuntu.com/ubuntu,g /etc/apt/sources.list.d/official-package-repositories.list
  sudo mintupdate-cli -ry upgrade
  sudo mintupdate-cli -ry upgrade
  sudo apt install -y usrmerge
  sudo apt autoremove -y
  gsettings set org.cinnamon.desktop.session idle-delay 900
  gsettings set org.nemo.preferences thumbnail-limit 68719476736
