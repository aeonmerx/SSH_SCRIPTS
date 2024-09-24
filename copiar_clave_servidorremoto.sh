#!/bin/bash

# Script para copiar la clave SSH a un servidor remoto

read -p "Introduce el usuario remoto: " user
read -p "Introduce la dirección IP o dominio del servidor: " server

echo "Copiando la clave SSH al servidor $server..."
ssh-copy-id "${user}@${server}"

echo "Clave SSH copiada correctamente."
