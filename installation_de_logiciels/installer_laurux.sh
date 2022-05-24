#!/usr/bin/bash

sudo snap refresh
sudo snap install laurux || sudo snap install --candidate laurux
sudo apt install -y mysql-server
utilisateur=$USER
echo
echo "Créer un mot de passe pour le compte MySQL "${utilisateur}" 0:"
sudo mysql --password --execute="CREATE USER "$utilisateur"@localhost;"
echo
echo "Entrer le mot de passe du compte MySQL "${utilisateur}" :"
sudo mysql --password --execute="GRANT ALL PRIVILEGES ON *.* TO "${utilisateur}"@localhost;"
