#!/usr/bin/bash

echo 'Ce script doit être lancé avant ET après la mise à niveau.'
echo 'Taper 1 pour lancer la partie AVANT la mise à niveau,'
echo 'Taper 2 pour lancer la partie APRÈS la mise à niveau.'
read -r un_deux

if [[ $un_deux == 1 ]] ; then
  sudo mintupdate-cli -ry upgrade
  sudo mintupdate-cli -ry upgrade
  sudo apt autoremove -y
  gsettings set org.cinnamon.desktop.session idle-delay 0
fi

if [[ $un_deux == 2 ]] ; then
  sudo sed -i s,http://packages.linuxmint.com,https://mirror.cyberbits.eu/linuxmint/packages,g /etc/apt/sources.list.d/official-package-repositories.list
  sudo sed -i s,http://archive.ubuntu.com/ubuntu,https://fr.archive.ubuntu.com/ubuntu,g /etc/apt/sources.list.d/official-package-repositories.list
  sudo mintupdate-cli -ry upgrade
  sudo mintupdate-cli -ry upgrade
  sudo apt install -y celluloid gnote drawing neofetch
  sudo apt purge -y xplayer tomboy
  sudo apt autoremove -y
  gsettings set org.cinnamon.desktop.session idle-delay 900
  echo 'Mise à niveau terminée, merci d’activir XApp.'
fi
