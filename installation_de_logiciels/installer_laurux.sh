#!/usr/bin/bash

# Mettre à jour les snaps
sudo snap refresh
# Installer Laurux depuis snap (installer la version « candidate » si la version classique n’existe pas)
sudo snap install laurux || sudo snap install --candidate laurux
# Installer MySQL
sudo apt install -y mysql-server

# Récupérer le nom de l’utilisateur
utilisateur=$USER

read -rp "Créer un mot de passe pour le compte MySQL "${utilisateur}" : " mot_de_passe_mysql

# Créer l’utilisateur MySQL
sudo mysql --execute="CREATE USER \"${utilisateur}\"@localhost IDENTIFIED BY \"${mot_de_passe_mysql}\";"
# Lui donner toutes les permissions nécessaires
sudo mysql --password="${mot_de_passe_mysql}" --execute="GRANT ALL PRIVILEGES ON *.* TO \"${utilisateur}\"@localhost;"

echo
echo 'Laurux installé avec succès.'
echo

cat << EOF
Se connecter à la base de donnée MySQL dans Laurux :
Nom d’utilisateur MySQL : ${utilisateur}
Mot de passe MySQL : ${mot_de_passe_mysql}
Serveur MySQL : 127.0.0.1
EOF
