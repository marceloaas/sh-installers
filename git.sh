#!/bin/bash

clear
echo "========================================================="
echo "Efetuando instalação do GIT"
echo "========================================================="
sudo apt-get -y install git

echo "========================================================="
echo "Efetuando configuração padrão"
echo "========================================================="
git config --global user.name "Marcelo de Andrade"
git config --global user.email andrade.asmarcelo@gmail.com
git config --global core.editor code
git config --global merge.tool code

echo "========================================================="
echo "Configuração atual:"
echo "========================================================="
git config --list
