#!/bin/bash
# Script complementos para fedora
# Auto: Felipe M A B Huinka

echo " Instalando ---> GOOGLE CHROME ....";

# Abilitando Repositorios de Terceiros
sudo dnf install -q fedora-workstation-repositories;

# abilita o repositorio do google crome
sudo dnf config-manager --set-enabled google-chrome;

# Instala a Versão Intavel do Google Crome
sudo dnf install -q google-chrome-stable -y;

