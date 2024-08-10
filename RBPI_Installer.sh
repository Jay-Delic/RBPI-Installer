#!/bin/bash

# Install Conky
apt insstall conky -y

# Download files
curl https://github.com/Jay-Delic/RBPI-Installer/blob/main/JD_Wallpaper.jpg

# Adjust Wallpaper
mv ~/JD_Wallpaper.jpg ~/Pictures/JD_Wallpaper.jpg
pcmanfm --set-wallpaper ~/Pictures/JD_Wallpaper.jpg

# Configure and start Conky
curl https://github.com/Jay-Delic/RBPI-Installer/blob/main/.conkyrc
curl https://github.com/Jay-Delic/RBPI-Installer/blob/main/conky.desktop

mkdir ~/.config/autostart
mv conky.desktop ~/.config/autostart/conky.desktop

conky

rm ~/RBPI_Installer.sh
