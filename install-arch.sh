#!/bin/bash
DOTFILE_PATH=$PWD

if ! command -v yay &> /dev/null
then
    echo "=== Installing yay ==="
    cd /tmp/ && sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
fi

if ! command -v nvim &> /dev/null
then
    echo "=== Installing nvim ==="
    yay -S neovim
fi

if ! command -v rg &> /dev/null
then
    echo "=== Installing ripgrep ==="
    yay -S ripgrep
fi

if ! command -v unzip &> /dev/null
then
  echo "=== Installing unzip ==="
  yay -S unzip
fi

echo "=== Copying .dotfiles ==="
cd $DOTFILE_PATH
cp -r ./.config/* ~/.config/

echo "=== DONE ==="
