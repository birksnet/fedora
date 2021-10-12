#!/bin/bash
# Script complementos para fedora
# Auto: Felipe M A B Huinka

echo " Instalando ---> Docker....";

# isntalar dnf plugins
sudo dnf -yq install  dnf-plugins-core;


# Adicinar repositorio 
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo;
    
# Abilita Nightly
sudo dnf config-manager --set-enabled docker-ce-nightly

# Abilita Test
sudo dnf config-manager --set-enabled docker-ce-test
    

# Instalando Docker
sudo dnf install -q docker-ce docker-ce-cli containerd.io;

# Instalando Compose
sudo dnf install -q docker-compose;

sudo groupadd docker

sudo usermod -aG docker $USER

sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R



