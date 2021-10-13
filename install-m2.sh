#!/bin/sh

###### Script para clonar FIRESTORE magenteiro
###### ANTES DE USAR ESSE ARQUIVO DE PERMISSAO ( sudo chmod a+x /install-m2.sh )
sudo chmod +x ./install-m2.sh

echo "############## Instalando Magento FireStore ####################";

echo "De um ome para o diretorio raiz: " ;
read PASTA ;

echo " -- > Criando pasta ...";
        sudo mkdir /$PASTA 
echo " -- > Aplicando Permissoes ...";
        sudo chmod 777 /$PASTA 

echo "
            ----> Clonando Repositorio MagenteiroFireStore
";
        sudo git clone --recurse-submodule https://github.com/magenteiro/firestore.git /"$PASTA"/magento2

echo "------------- DIRETORIO CLONADO PARA /"$PASTA"/magento2 --------------";

echo " -- > Aplicando Permissoes COMPOSES ...";
        #sudo chmod 777 /$PASTA/magento2/docker-compose.dev.yml
        #sudo chmod 777 /$PASTA/magento2/src/composer.json
        #sudo chmod 777 /$PASTA/magento2/src/auth.json.sample

echo " ------------------- FIM FAZER ALTERAÇÕES ADEQUADAS  /"$PASTA"/magento2";
