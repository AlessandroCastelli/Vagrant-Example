#!/bin/bash

echo "Web provisioning - begin"

sudo apt update

sudo apt-get update -y

sudo apt install apache2 -y #install apache

sudo apt-get install php -y

sudo apt-get install php libapache2-mod-php php-mysql -y

sudo service apache2.service restart #start apache

echo "Web provisioning - end"
