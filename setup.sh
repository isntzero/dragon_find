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
    
    # Descomprime el archivo dragon_find.tar.gz
    if [ -f "./dragon_find.tar.gz" ]; then
        tar -xzvf ./dragon_find.tar.gz 
        echo "Archivo descomprimido correctamente." | lolcat
    else
        echo "Archivo dragon_find.tar.gz no encontrado." | lolcat
        exit 1
    fi
    
    # Ejecuta el script de requisitos desde el directorio requeriments
    if [ -f "./requeriments/requeriments.sh" ]; then
        sudo bash ./requeriments/requeriments.sh 
        echo "Requisitos instalados correctamente." | lolcat
    else
        echo "Script requeriments.sh no encontrado." | lolcat
        exit 1
    fi
    
    # Volver a ejecutar menú
    sudo bash setup.sh

elif [ "$execute" == "2" ]; then
    clear
    # Ejecuta el script principal
    if [ -f "./dragon_find/dragonfind.sh" ]; then
        sudo bash ./dragon_find/dragonfind.sh
    else
        echo "Script dragonfind.sh no encontrado." | lolcat
        exit 1
    fi
    
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
        sudo bash setup.sh
    elif [ "$continue" == "n" ]; then
        exit
    else
        cowsay -f dragon "Ha ocurrido un error" | lolcat
        sudo bash setup.sh
    fi
fi