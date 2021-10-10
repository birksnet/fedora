#!/bin/bash
# Script complementos para fedora
# Auto: Felipe M A B Huinka

echo " Instalando ---> GOOGLE CHROME ....";

# Abilitando Repositorios de Terceiros
dnf install fedora-workstation-repositories;

# abilita o repositorio do google crome
dnf config-manager --set-enabled google-chrome;

# Instala a Versão Intavel do Google Crome
dnf install google-chrome-stable -y;

