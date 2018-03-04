#!/bin/bash

clear
echo "========================================================="
echo "Baixando última versão estável amd64 em /var/tmp"
echo "========================================================="
cd /var/tmp
wget --show-progress -O code.deb https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable

echo "========================================================="
echo "Desinstalando versões anteriores"
echo "========================================================="
sudo apt-get purge code
sudo apt-get autoremove
sudo apt-get autoclean

echo "========================================================="
echo "Instalando nova versão"
echo "========================================================="
sudo dpkg -i code.deb

echo "========================================================="
echo "Instalando dependências"
echo "========================================================="
sudo apt-get -f -y install

echo "========================================================="
echo "Removendo instalador"
echo "========================================================="
sudo rm code.deb
