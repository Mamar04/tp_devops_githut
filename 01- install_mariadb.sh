#!/bin/bash

# Mise à jour du système
sudo apt update
sudo apt upgrade -y

# Installation des paquets
sudo apt install -y apache2 mariadb-server

#

# Activation de MariaDB
sudo apt install apache2
sudo systemctl is-enabled apache2
sudo systemctl status apache2

# Installation de ufw
sudo apt install ufw
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw app list
sudo ufw allow "WWW Full"
sudo ufw reload
sudo ufw status



# Installation de php 8.2
sudo apt install -y php php-curl php-cli php-mysql php-gd php-common php-xml php-json php-intl php-pear php-imagick php-dev php-common php-mbstring php-zip php-soap php-bz2 php-bcmath php-gmp php-apcu libmagickcore-dev

php --version
php -m


sudo systemctl restart apache2


 Installation de MariaDB
sudo apt install -y mariadb-server
sudo systemctl is-enabled mariadb
sudo systemctl status mariadb
sudo mariadb-secure-installation
sudo mariadb -u root -p





