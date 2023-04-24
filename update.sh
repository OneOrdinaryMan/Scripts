#!/bin/sh

read -p "Do you want to update the system? (y/N)" start_script

if [[ $start_script == "y" ]] || [[ $start_script == "Y" ]]; then

  read -p "Do you want to upgrade the mirrors? (y/N)" mirror

  if [[ $mirror == "y" ]] || [[ $mirror == "Y" ]]; then
    sudo pacman-mirrors -f 5
  fi
  echo "Updating the MAIN & AUR packages:"
  paru -Syu --devel --noconfirm
  echo "Updating with RUSTUP"
  rustup update
  echo "upgrading DOOM EMACS"
  doom upgrade

  read -p "Upgrade complete! Do you want to REBOOT the system now? (y/N)" reboot_confirm
  if [[ $reboot_confirm == "y" ]] || [[ $reboot_confirm == "Y" ]]; then
    reboot
  else
    exit 0
  fi
else
  echo "you pressed n"
  exit 0
fi