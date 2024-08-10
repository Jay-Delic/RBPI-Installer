#!/bin/bash

# Install Conky
apt install conky -y

# Mount Folder
cd ~/RBPI-Installer

# Adjust Wallpaper
mv JD_Wallpaper.jpg ~/Pictures/JD_Wallpaper.jpg
pcmanfm --set-wallpaper ~/Pictures/JD_Wallpaper.jpg

# Configure and start Conky
cp .conkyrc ~/.conkyrc

mkdir ~/.config/autostart
mv conky.desktop ~/.config/autostart/conky.desktop

conky

rm ~/RBPI_Installer.sh
