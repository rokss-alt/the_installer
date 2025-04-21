#!/bin/bash

# Enable the multilib repository
sudo sed -i '/\[multilib\]/,/Include/ s/^#//' /etc/pacman.conf
sudo pacman -Sy  # Refresh package databases

# Add Sublime Text repository and GPG key
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

# Install required packages (excluding git)
sudo pacman -S --needed base-devel firefox cronie sublime-text neofetch flatpak

# Install yay if not already installed
if ! command -v yay &> /dev/null
then
    git clone https://github.com/Jguer/yay.git && cd yay && makepkg -si
    cd .. && rm -rf yay  # Optional cleanup
fi

# Install apps with yay
yay -S ani-cli discord spotify --noconfirm

# Install Obsidian via flatpak
flatpak install flathub md.obsidian.Obsidian --assumeyes

# Enable and start cronie
sudo systemctl enable cronie
sudo systemctl start cronie

# Move the update.sh script to Documents (assuming it's in the same dir as this script)
mv ./update.sh /home/rokas/Documents/update.sh
chmod +x /home/rokas/Documents/update.sh

# Add @reboot cron job if it's not already there
(crontab -l 2>/dev/null | grep -q "@reboot /home/rokas/Documents/update.sh") || \
(crontab -l 2>/dev/null; echo "@reboot /home/rokas/Documents/update.sh") | crontab -
