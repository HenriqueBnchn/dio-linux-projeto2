#!/bin/bash


echo "Atualizando..."
apt-get update -y
apt-get upgrade -y

echo "Instalando apache e unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Fazendo download do arquivo .zip..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo main..."
unzip main.zip

echo "Copiando arquivo para pasta do apache..."
cd linux-site-dio-main
cp -R * /var/www/html/
