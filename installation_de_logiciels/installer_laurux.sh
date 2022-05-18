#!/usr/bin/bash

sudo snap refresh
sudo snap install laurux || sudo snap install --candidate laurux
sudo apt install -y mysql-server
utilisateur=${USER}
read -rp 'Cr\u00e9er le mot de passe pour la base de donn\u00e9es MySQL\u00a0: ' mot_de_passe_mysql
sudo mysql --user="${utilisateur}" --password="${mot_de_passe_mysql}" --execute="CREATE USER "${utilisateur}"@localhost IDENTIFIED BY "${mot_de_passe_mysql}";"
sudo mysql --user="${utilisateur}" --password="${mot_de_passe_mysql}" --execute="GRANT ALL PRIVILEGES ON *.* TO "${utilisateur}"@localhost;"
