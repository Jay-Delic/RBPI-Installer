#!/bin/bash

# Install Conky
apt install conky -y

# Mount Folder
cd /home/$USER/RBPI-Installer

# Adjust Wallpaper
mv JD_Wallpaper.jpg /home/$USER/Pictures/JD_Wallpaper.jpg
pcmanfm --set-wallpaper /home/$USER/Pictures/JD_Wallpaper.jpg

# Configure and start Conky
cp .conkyrc /home/$USER/.conkyrc

mkdir /home/$USER/.config/autostart
mv conky.desktop /home/$USER/.config/autostart/conky.desktop

conky
cd ~
rm -r RBPI-Installer 
