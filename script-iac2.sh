#!/bin/bash

echo "Procurando atualizações"
apt-get update -y

echo "Dando upgrade"
apt-get upgrade -y

echo "Instalando o Apache2"
apt-get install apache2 -y

echo "Instalando o unzip"
apt-get install unzip -y

echo "Acessando o diretório onde iremos baixar o arquivo zip"

cd /tmp

echo "Baixando o arquivo WEB"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main/

echo "Copiando todos os arquivos recursivamente para o diretorio do Apache"

cp -R * /var/www/html/

