#!/bin/bash
# Script complementos para fedora
# Auto: Felipe M A B Huinka

echo " Instalando ---> Snap ....";

# Instalando Snap
sudo dnf install snapd


# Abilitando repositorio 
sudo ln -s /var/lib/snapd/snap /snap


