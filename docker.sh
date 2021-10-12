#!/bin/bash
# Script complementos para fedora
# Auto: Felipe M A B Huinka

echo " Instalando ---> Docker....";

# isntalar dnf plugins
dnf -yq install  dnf-plugins-core;


# Adicinar repositorio 
dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo;
    
# Abilita Nightly
dnf config-manager --set-enabled docker-ce-nightly

# Abilita Test
dnf config-manager --set-enabled docker-ce-test
    

# Instalando Docker
dnf install -q docker-ce docker-ce-cli containerd.io;

# Instalando Compose
dnf install -q docker-compose;

groupadd docker

usermod -aG docker $USER

chown "$USER":"$USER" /home/"$USER"/.docker -R
chmod g+rwx "$HOME/.docker" -R



