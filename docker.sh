#!/bin/bash

clear

echo "========================================================="
echo "Docker-ce"
echo "========================================================="

OS="$(lsb_release -is)"

if [ "$OS" == "Ubuntu" ]; then
        
    sudo apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

    sudo apt-get update 
    sudo apt-get install -y docker-ce
    sudo docker run hello-world
fi

if [ "$OS" == "Fedora" ]; then
    sudo dnf remove docker \
        docker-client \
        docker-client-latest \
        docker-common \
        docker-latest \
        docker-latest-logrotate \
        docker-logrotate \
        docker-selinux \
        docker-engine-selinux \
        docker-engine

    curl -fsSL https://get.docker.com -o get-docker.sh

    sudo sh get-docker.sh

    sudo usermod -aG docker $USER
fi
