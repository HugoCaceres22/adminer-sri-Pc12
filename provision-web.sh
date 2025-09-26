#/!bin/bash

set -eux

#instalar paquetes pache y php
apt-get update
apt-get install -y \
    apache2 \
    php \
    libapache2-mod-php \
    php-mysql 


systemctl restart apache2


#descargar adminer


cp /vagrant/Vendor/adminer-4.3.1-mysql-en.php /var/www/html/adminer.php

