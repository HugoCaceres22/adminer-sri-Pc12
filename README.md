# Proyecto con Vagrant

Hemos creado 2 maquinas virtuales, una llamada **db** y otra **web** usando la box `ubuntu/xenial64`.

## maquina web
- Se instalaron:
  - apache2  
  - php  
  - libapache2-mod-php  
  - php-mysql  

- Para el adminer, primero nos descargamos la version 4.3.1 y luego ejecutamos este comando:  
cp /vagrant/Vendor/adminer-4.3.1-mysql-en.php /var/www/html/adminer.php


## maquina db
- Se instalaron:
- debconf-utils  
- mysql-server  

## notas
- Adminer se abre en `http://192.168.56.10/adminer.php`  
- La base de datos está en la maquina db  
