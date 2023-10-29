CREATE DATABASE nextcloud_db;
CREATE USER 'nextclouduser'@'localhost' IDENTIFIED BY 'StrongPassword';
GRANT ALL PRIVILEGES ON nextcloud_db.* TO n'extclouduser'@'localhost';
FLUSH PRIVILEGES;


CREATE DATABASE wordpress_db;
CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'StrongPassword';
GRANT ALL PRIVILEGES ON wordpress-db.* TO 'wordpress'@'localhost';
FLUSH PRIVILEGES;