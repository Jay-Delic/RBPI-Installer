#!/bin/bash

# Install Conky
apt install conky -y

# Mount Folder
cd /home/$USER/RBPI-Installer

# Adjust Wallpaper
sudo mv JD_Wallpaper.jpg /home/$USER/Pictures/JD_Wallpaper.jpg
pcmanfm --set-wallpaper /home/$USER/Pictures/JD_Wallpaper.jpg

# Configure and start Conky
cp .conkyrc /home/$USER/.conkyrc

sudo mkdir /home/$USER/.config/autostart
sudo mv conky.desktop /home/$USER/.config/autostart/conky.desktop
cd ~
sudo rm -r RBPI-Installer 
conky

