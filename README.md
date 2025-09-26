# Proyecto Vagrant: Web + DB

En este proyecto se han creado **dos máquinas virtuales** utilizando **Vagrant** con la plantilla `ubuntu/xenial64`.

## Estructura del Proyecto

- **Máquina `web`**
  - Instalación de:
    - `apache2`
    - `php`
    - `libapache2-mod-php`
    - `php-mysql`
  - Configuración de **Adminer**:
    ```bash
    cp /vagrant/Vendor/adminer-4.3.1-mysql-en.php /var/www/html/adminer.php
    ```

- **Máquina `db`**
  - Instalación de:
    - `debconf-utils`
    - `mysql-server`

## Vagrantfile

El archivo `Vagrantfile` está configurado para levantar ambas máquinas basadas en la box:

