#!/bin/bash
DOTFILE_PATH=$PWD

echo "Installing yay"
cd /tmp/ && sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "Installing neovim"
yay -S nvim ripgrep

echo "Copy .dotfiles"
echo $DOTFILE_PATH
cd $DOTFILE_PATH
cp -r ./.config/* ~/.config/

