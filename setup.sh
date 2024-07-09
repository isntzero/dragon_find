#!/bin/bash

# Menú ASCII

cowsay -f dragon "Hola, bienvenido a dragon_find" | lolcat
echo "Para continuar debes elegir una opción" | lolcat
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "[1] Instalar requisitos" | lolcat
echo "[2] Ejecutar script" | lolcat
echo "[3] Salir" | lolcat
read execute

if [ "$execute" == "1" ]; then 
    clear
    echo "Instalando requisitos" | lolcat
    # Descomprime el archivo dragond_find.tar.gz
    tar -xzvf ./dragon_find.tar.gz 
    # Ejecuta el script de requisitos desde el directorio requeriments
    sudo sh ./requeriments/requeriments.sh 
    # Volver a ejecutar menú
    sudo sh ./dragon_find/setup.sh

elif [ "$execute" == "2" ]; then
    clear
    # Ejecuta el script principal
    sudo sh ./dragon_find/dragonfind.sh
    
elif [ "$execute" == "3" ]; then
    clear
    # Salir del script
    exit

else
    clear
    # Si no se selecciona ninguna opción válida, volver a ejecutar el menú
    cowsay -f dragon "Ha ocurrido un error" | lolcat
    echo "¿Quieres continuar? [y/n]" | lolcat
    read continue
    if [ "$continue" == "y" ]; then
        sudo sh ./dragon_find/setup.sh
    elif [ "$continue" == "n" ]; then
        exit
    else
        cowsay -f dragon "Ha ocurrido un error" | lolcat
        sudo sh ./dragon_find/setup.sh
    fi
fi