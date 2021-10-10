#!/bin/bash
# Script complementos para fedora
# Auto: Felipe M A B Huinka

echo " Instalando ---> Visual Stidio Code ....";

# importando Repositorio
rpm --import -	-v --nofiles --quiet https://packages.microsoft.com/keys/microsoft.asc;


# Abilitando repositorio 
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo';

# Atualizando e Instalando Visual Studio code
dnf check-update;
dnf install code;

