#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install nginx

if ! [ -L /var/www ]; then
  sudo rm -rf /var/www
  sudo ln -fs /vagrant /var/www
fi


sudo apt-add-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get -y install php7.2-fpm php-mysql
sudo sed -i "901i\extension=mysqli" /etc/php/7.2/fpm/php.ini
sudo sed -i "s/.*#location ~ \.php$ {.*/location ~ \.php$ {/" /etc/nginx/sites-available/default
sudo sed -i "56i\location ~ \.php$ {" /etc/nginx/sites-available/default
sudo sed -i "57i\include snippets/fastcgi-php.conf;" /etc/nginx/sites-available/default 
sudo sed -i "58i\fastcgi_pass unix:/run/php/php7.2-fpm.sock;" /etc/nginx/sites-available/default 
sudo sed -i "59i\include fastcgi_params;" /etc/nginx/sites-available/default 
sudo sed -i "60i\}" /etc/nginx/sites-available/default       
sudo service nginx reload
sudo service php7.2-fpm reload



sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get install -y mysql-server mysql-client
sudo apt-get install php-mysql
sudo apt-get install php7.2-mysql
sudo sed -i -e 's/bind-addres/#bind-address/g' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo sed -i -e 's/skip-external-locking/#skip-external-locking/g' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root'; FLUSH privileges;"
sudo service mysql restart


cd /var/www/
mysql -u root -proot -e "CREATE DATABASE usersdb;"
mysql -u root -proot usersdb < backup_usersdb.sql




