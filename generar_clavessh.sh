#!/bin/bash

# Script para generar una clave SSH

echo "Generando un nuevo par de claves SSH..."
ssh-keygen -t rsa -b 4096 -C "tu_email@example.com"

echo "Clave SSH generada en: ~/.ssh/id_rsa"
echo "Agregando la clave SSH al agente..."
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "Recuerda copiar la clave pública usando:"
echo "cat ~/.ssh/id_rsa.pub"
