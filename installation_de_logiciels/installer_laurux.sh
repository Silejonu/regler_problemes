#!/usr/bin/bash

sudo snap refresh
sudo snap install laurux || sudo snap install --candidate laurux
sudo apt install -y mysql-server
utilisateur=$USER
read -rp "Créer un mot de passe pour le compte MySQL "${utilisateur}" : " mot_de_passe_mysql
#echo
#echo "Créer un mot de passe pour le compte MySQL "${utilisateur}" :"
#sudo mysql --password="${mot_de_passe_mysql}" --execute="CREATE USER "$utilisateur"@localhost;"
sudo mysql --execute="CREATE USER \"${utilisateur}\"@localhost IDENTIFIED BY \"${mot_de_passe_mysql}\";"


#echo
#echo "Entrer le mot de passe du compte MySQL "${utilisateur}" :"
sudo mysql --password="${mot_de_passe_mysql}" --execute="GRANT ALL PRIVILEGES ON *.* TO \"${utilisateur}\"@localhost;"

cat << EOF
Laurux installé avec succès.

Se connecter à la base de donnée MySQL dans Laurux :
Nom d’utilisateur MySQL : ${utilisateur}
Mot de passe MySQL : ${mot_de_passe_mysql}
Serveur MySQL : 127.0.0.1
EOF
