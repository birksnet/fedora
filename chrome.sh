#!/bin/bash
# Script complementos para fedora
# Auto: Felipe M A B Huinka

echo " Instalando ---> GOOGLE CHROME ....";

# Abilitando Repositorios de Terceiros
dnf install -q fedora-workstation-repositories;

# abilita o repositorio do google crome
dnf config-manager --set-enabled google-chrome;

# Instala a Versão Intavel do Google Crome
dnf install -q google-chrome-stable -y;

