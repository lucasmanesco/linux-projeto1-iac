#!/bin/bash

echo "Desafio 1 - Infrastructure as a Code"
echo "Executando..."

echo "Criando diretórios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

# GRP_ADM
useradd carlos -c "Carlos José" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -c "Maria Joana" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -c "João Feijão" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

# GRP_VEN
useradd debora -c "Débora Seco" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Tião" -m -s /bin/bash -p $(openssl passwd -6 Senha123)/ -G GRP_VEN
useradd roberto -c "Robertinho" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

#GRP_SEC
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -c "Amanda Casé" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerin Silva" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Gerenciando permissões..."

chmod 777 /public/

chown :GRP_ADM /adm/
chown :GRP_VEN /ven/
chown :GRP_SEC /sec/

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Feito!"
