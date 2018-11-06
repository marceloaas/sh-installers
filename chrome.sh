#!/bin/bash

OS="$(lsb_release -is)"

cd /var/tmp

if [ "$OS" == "Ubuntu" ]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    apt-get purge google-chrome
    dpkg -i google-chrome-stable_current_amd64.deb
    apt-get -f -y install
    rm google-chrome-stable_current_amd64.deb
fi

if [ "$OS" == "Fedora" ]; then
    echo "eqweqew"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
    dnf google-chrome-stable_current_x86_64.rpm
    rm google-chrome-stable_current_x86_64.rpm
fi
