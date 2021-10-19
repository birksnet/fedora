#!/bin/bash
# Script complementos para fedora
# Auto: Felipe M A B Huinka

echo " Instalando ---> Snap ....";

# Instalando Snap
sudo dnf install snapd


# Abilitando repositorio 
sudo ln -s /var/lib/snapd/snap /snap

#Instalar Discord
sudo snap install discord

#Instalar Telegram
sudo snap install telegram-desktop

#Instalar Discord
sudo snap install thunderbird
