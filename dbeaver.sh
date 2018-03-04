#!/bin/bash

clear
echo "========================================================="
echo "Baixando última versão estável amd64 em /var/tmp"
echo "========================================================="
cd /var/tmp
wget https://dbeaver.jkiss.org/files/dbeaver-ce_latest_amd64.deb

echo "========================================================="
echo "Desinstalando versões anteriores"
echo "========================================================="
sudo apt-get purge dbeaver*
sudo apt-get autoremove
sudo apt-get autoclean

echo "========================================================="
echo "Instalando nova versão"
echo "========================================================="
sudo dpkg -i dbeaver-ce_latest_amd64.deb

echo "========================================================="
echo "Instalando dependências"
echo "========================================================="
sudo apt-get -f -y install

echo "========================================================="
echo "Removendo instalador"
echo "========================================================="
sudo rm dbeaver-ce_latest_amd64.deb
