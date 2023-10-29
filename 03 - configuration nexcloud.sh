# Installation de curl et unzip
sudo apt install curl unzip -y

cd /var/www/
curl -o nextcloud.zip https://download.nextcloud.com/server/releases/latest.zip


unzip nextcloud.zip
sudo chown -R www-data:www-data nextcloud

sudo cat >/etc/apache2/sites-available/nextcloud.conf<<- EOF \
<VirtualHost *:80> 
    ServerName nextcloud
    ServerAlias www.nextcloud
    DocumentRoot /var/www/nextcloud
</VirtualHost>
EOF

sudo a2ensite nextcloud.conf
sudo apachectl configtest
sudo systemctl restart apache2