#!/bin/bash

sleep 60

LOGFILE="/home/rokas/update.log"
/usr/bin/sudo /usr/bin/pacman -Syu -y --noconfirm >> "$LOGFILE" 2>&1
/usr/bin/yay -Syu --noconfirm >> "$LOGFILE" 2>&1
/usr/bin/flatpak update -y >> "$LOGFILE" 2>&1
