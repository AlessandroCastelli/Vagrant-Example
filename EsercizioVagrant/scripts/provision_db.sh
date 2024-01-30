#!/bin/bash

echo "DB provisioning - begin"

sudo apt update
sudo apt install mysql-server -y

sudo sed -i "s/bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo sed -i "s/.*port.*/port = 3306/" /etc/mysql/mysql.conf.d/mysqld.cnf

sudo systemctl restart mysql.service

sudo mysql <<EOS
CREATE DATABASE vagrant;
USE vagrant;
CREATE USER 'vagrant'@'10.10.20.11' IDENTIFIED BY 'password';
CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON vagrant.* TO 'vagrant'@'localhost';
GRANT ALL ON vagrant.* TO 'vagrant'@'10.10.20.11';


CREATE TABLE dati
(
	id int primary key auto_increment,
	nome VARCHAR(50),
	cognome VARCHAR(50),
	eta int
);

INSERT INTO dati(nome,cognome,eta) VALUES ("Alessandro","Castelli",20);
INSERT INTO dati(nome,cognome,eta) VALUES ("Alessandro","Curiale",20);
INSERT INTO dati(nome,cognome,eta) VALUES ("Alessandro","Perri",20);
INSERT INTO dati(nome,cognome,eta) VALUES ("Diego","Muniz",20);
INSERT INTO dati(nome,cognome,eta) VALUES ("Alex","Ierardi",20);
INSERT INTO dati(nome,cognome,eta) VALUES ("Christian","Monga",20);
INSERT INTO dati(nome,cognome,eta) VALUES ("Edoardo","Ratti",20);
EOS

echo "DB provisioning - end"