#!/bin/bash

OS="$(lsb_release -is)"

clear

echo "========================================================="
echo " VSCODE "
echo "========================================================="

cd /var/tmp

if [ "$OS" == "Ubuntu" ]; then
    wget --show-progress -O code.deb https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable

    sudo apt-get -y purge code
    sudo apt-get autoremove
    sudo apt-get autoclean
    sudo dpkg -i code.deb
    sudo apt-get -f -y install
    sudo rm code.deb
fi

if [ "$OS" == "Fedora" ]; then
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

    dnf check-update
    sudo dnf install code
fi

xdg-mime default code.desktop text/plain
