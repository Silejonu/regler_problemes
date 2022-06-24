# Problèmes courants

## Pas d’accès internet derrière ProxyEPN
### Firefox
Paramètres -> Général -> Paramètres réseau -> Détection automatique des paramètres de proxy pour ce réseau

### Chrome
Paramètres -> Paramètres avancés -> Système -> Accéder aux paramètres de proxy de votre ordinateur -> activer le mode automatique pour le proxy du réseau

## Désactiver Intel RST
Disponible dans le BIOS. L’option est parfois cachée. À ce moment-là, faire `Ctrl + s` pour la faire apparaître.

## Touches de clavier Apple inversées sous Linux
1. [Solution préférable](https://help.ubuntu.com/community/AppleKeyboard#Correcting_swapped_keys_and_wrong_keymaps_for_international_.28non-US.29_keyboards)
2. [Solution de repli](https://askubuntu.com/a/572670)

## Installer Windows sans compte Microsoft
### Windows 10
Au moment de se connecter à un compte Microsoft, débrancher la connexion internet et cliquer sur « Créer un compte »
### Windows 11
- Au moment de se connecter à un compte Microsoft, renseigner une adresse e-mail inexistante mais dans un format valide (ex : `bidule@trucmuche.fr`), puis un mot de passe au hasard.
- Au moment de se connecter à un réseau, ouvrir le gestionnaire de tâches en appuyant sur `Ctrl + Maj. + Échap.` ; ou bien en appuyant sur `Maj. + F10`, puis en tapant `taskmgr`. Ensuite, tuer le processus `Network Connection Flow`.
- Lorsque l’écran « Il est temps de vous connecter à un réseau » apparaît, appuyer sur `Alt + F4`.

# Systèmes d’exploitation utiles

## Bureautique
- [Linux Mint Cinnamon](https://linuxmint.com/), pour des débutants
- [Ubuntu LTS](https://www.ubuntu-fr.org/), pour des débutants
- [Linux Mint XFCE](https://linuxmint.com/), distribution légère, pour des débutants
- [Fedora Workstation](https://getfedora.org/), pour des utilisateurs faux-débutants/intermédiaires

## Serveur
- [CentOS Stream](https://www.centos.org/centos-stream/), environ 10 ans de support
- [Debian](https://www.debian.org/), deux à trois ans de support
- [TrueNAS Core](https://www.truenas.com/download-truenas-core/), pour un NAS

## Dépannage
- [Clonezilla](https://clonezilla.org/), clonage de disques
- [ESET SysRescue](https://www.eset.com/fr/support/sysrescue/), antivirus en live
- [Finnix](https://www.finnix.org/), nombreux outils de dépannage en ligne de commande
- [Memtest86+](https://www.memtest.org/), testeur de RAM
- [Rescatux](https://www.supergrubdisk.org/category/download/rescatuxdownloads/rescatux-stable/), nombreux outils de dépannage en graphique, notamment pour changer les mots de passe utilisateur sous Windows et Linux
- [SeaTools Bootable](https://www.seagate.com/fr/fr/support/downloads/seatools/), vérification de l’état de santé des SSD
- [Super Grub2 Disk](https://www.supergrubdisk.org/category/download/supergrub2diskdownload/super-grub2-disk-stable/), démarrer un système Linux ou Windows qui ne démarre plus

## ROMs Android
- [LineageOS](https://lineageos.org/), Android stock, supporte des appareils plus supportés par les constructeurs
- [/e/](https://e.foundation/fr/), Android sans Google
- [GrapheneOS](https://grapheneos.org/), Android renforcé pour la sécurité

## Autres
- [WinPE Sergei Strelec](https://sergeistrelec.ru/), Windows 8/10 en live
- [Kali Linux](https://www.kali.org/), tests de sécurité (pentesting)
