#!/bin/bash

sudo apt install lolcat
sudo apt install cowsay
tar -xzvf ./dragon_find.tar.gz 
echo "Archivo descomprimido correctamente." | lolcat
clear
cowsay -f dragon "Gracias por instalarme, no olvides de hacer tu ls para comprobar que el directorio se creo" | lolcat
sleep 10
exit   