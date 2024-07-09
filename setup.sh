#!/bin/bash

#menu acsii

cowsay -f dragon "Hola bievenido a dragon_find" | lolcat
echo "Para continuar debes elegir una opción" | lolcat
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" 
echo "[1] Instalar requisitos" | lolcat
echo "[2] Ejecutar script" | lolcat
echo "[3] Salir" | lolcat
read execute

if [$execute=="1"]; then 
    # Descomprime el archivo dragond_find.tar.gz
    tar -xzvf ./dragon_find.tar.gz 
    # Ejecuta el script de requisitos desde el directorio requeriments
    sudo sh ./requeriments/requeriments.sh 
    # Volver a ejecutar menu
    sudo sh ./dragon_find/setup.sh

elif [$execute=="2"]; then
    # Ejecuta el script de requisitos desde el directorio requeriments
    sudo sh ./dragon_find/dragonfind.sh
    
elif [$execute=="3"]; then
    # Salir del script
    exit

else
    # Si no se selecciona ninguna opción, volver a ejecutar el menu
    cowsay -f dragon "Ha ocurrido un error" | lolcat
    echo "Quiero continuar [y/n]" | lolcat
    read continue
    if [$continue=="y"]; then
        sudo sh ./dragon_find/setup.sh
        elif [$continue=="n"]; then
        exit
        else
        cowsay -f dragon "Ha ocurrido un error" | lolcat
        sudo sh ./dragon_find/setup.sh
        fi
fi














