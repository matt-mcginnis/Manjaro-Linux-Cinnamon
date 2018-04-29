#!/bin/bash

##################################################
########### Configuration Setup Script ###########
##################################################

# Set time to local-time (Dual Boot with Windows)
sudo timedatectl set-local-rtc 1 --adjust-system-clock

# Install nvidia proprietary drivers
sudo mhwd -a -pci nonfree 0300

# Replace tlp with personal configuration (SOUND_POWER_SAVE_ON_BAT=0)
sudo rm /etc/default/tlp
sudo cp ~/GitHub/Manjaro-Linux-Cinnamon/etc/default/tlp /etc/default/

# Replace .Xresources with personal configuration
cp ~/GitHub/Manjaro-Linux-Cinnamon/home/.Xresources ~/

# Add .Xmodmap to ~/
cp ~/GitHub/Manjaro-Linux-Cinnamon/home/.Xmodmap ~/

# Replace xorg.conf.d files
sudo rm -r /etc/X11/xorg.conf.d/
sudo cp -r ~/GitHub/Manjaro-Linux-Cinnamon/etc/X11/xorg.conf.d/ /etc/X11/

# Replace i3 configuration with personal configuration
cp -r ~/GitHub/Manjaro-Linux-Cinnamon/.config/i3/ ~/.config/

# Copy neomuttrc personal configuration
cp -r ~/GitHub/Manjaro-Linux-Cinnamon/.config/neomutt/ ~/.config/
