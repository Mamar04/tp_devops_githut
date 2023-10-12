#!/bin/bash
cat <<EOL > /etc/apache2/sites-available/nexcloud.conf
<VirtualHost *:80>
    ServerAdmin mamar.mmoumouni@gmail.com
    ServerName next.me
    DocumentRoot /var/www/nextcloud

    ErrorLog /var/www/nextcloud/error.log
    CustomLog /var/www/nextcloud/access.log combined

    <Directory /var/www/nextcloud>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
EOL

# creation de vhost pour wordpress

cat <<EOL > /etc/apache2/sites-available/wordpress.conf
<VirtualHost *:80>
    ServerAdmin mamar.mmoumouni@gmail.com
    ServerName press.me
    DocumentRoot /var/www/wordpress

    ErrorLog /var/www/wordpress/error.log
    CustomLog /var/www/wordpress/access.log combined

    <Directory /var/www/wordpress>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
EOL

#creation de vhost prestashop

cat <<EOL > /etc/apache2/sites-available/prestashop.conf
<VirtualHost *:80>
    ServerAdmin mamar.mmoumouni@gmail.com
    ServerName shop.me
    DocumentRoot /var/www/prestashop/

    ErrorLog /var/www/prestashop/error.log
    CustomLog /var/www/prestashop/access.log combined

    <Directory /var/www/prestashop/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
EOL