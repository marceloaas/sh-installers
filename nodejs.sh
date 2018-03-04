#!/bin/bash

clear
echo "========================================================="
echo "Instalando cURL"
echo "========================================================="
sudo apt-get install curl

echo "========================================================="
echo "Adicionando repositório node"
echo "========================================================="
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

echo "========================================================="
echo "Desinstalando versões anteriores"
echo "========================================================="
sudo apt-get purge -y nodejs

echo "========================================================="
echo "Instalando nodejs 8.x"
echo "========================================================="
sudo apt-get install -y nodejs

echo "========================================================="
echo "Instalando pacotes"
echo "========================================================="
sudo apt-get install -y build-essential