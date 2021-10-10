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

# Instalando Docker
dnf install -q docker-ce docker-ce-cli containerd.io;

# Instalando Compose
dnf install -q docker-compose;


