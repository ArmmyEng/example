#!/bin/bash

read -p  "Hola vamos a capturar usuarios, dame el primero: " user
sleep 1
sudo useradd $user
sleep 2
echo "Hemos asignado el usuario $user"

read -p "Vamos con los grupos, dame el primero: " group
sleep 1
sudo groupadd $group
sleep 2
echo "Hemos creado el grupo $group"
sleep 2

read -p "Vamos a agregar un usuario a grupo, ¿Cual es tu usuario?: " usuario
sleep 1
read -p "¿Cual será el grupo?: " grupo
sleep 1
sudo usermod -a -G $grupo $usuario
echo "Hemos agregado a $usuario al grupo $grupo"
