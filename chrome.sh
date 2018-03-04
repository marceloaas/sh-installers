#!/bin/bash

clear
echo "========================================================="
echo "Baixando última versão estável amd64 em /var/tmp"
echo "========================================================="
cd /var/tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "========================================================="
echo "Desinstalando versões anteriores"
echo "========================================================="
sudo apt-get purge google-chrome
sudo apt-get autoremove
sudo apt-get autoclean

echo "========================================================="
echo "Instalando nova versão"
echo "========================================================="
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo "========================================================="
echo "Instalando dependências"
echo "========================================================="
sudo apt-get -f -y install

echo "========================================================="
echo "Removendo instalador"
echo "========================================================="
sudo rm google-chrome-stable_current_amd64.deb
