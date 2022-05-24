#!/usr/bin/bash

sudo snap refresh
sudo snap install laurux || sudo snap install --candidate laurux
sudo apt install -y mysql-server
utilisateur=$USER
read -rp "Créer un mot de passe pour le compte MySQL "${utilisateur}" :" mot_de_passe_msyql
#echo
#echo "Créer un mot de passe pour le compte MySQL "${utilisateur}" :"
sudo mysql --password="${mot_de_passe_msyql}" --execute="CREATE USER "$utilisateur"@localhost;"
#echo
#echo "Entrer le mot de passe du compte MySQL "${utilisateur}" :"
sudo mysql --password="${mot_de_passe_msyql}" --execute="GRANT ALL PRIVILEGES ON *.* TO "${utilisateur}"@localhost;"

cat << EOF
Se connecter à la base de donnée MySQL dans Laurux :
Utilisateur : ${utilisateur}
Mot de passe : ${mot_de_passe_msyql}
@127.0.0.1
EOF
