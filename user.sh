#!/bin/bash

if [ "$EUID" -eq 0 ]
    then echo "Do not run as root"
        exit
fi

echo
echo "======> Installing ZSH-Plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.config/zsh/zsh-auto
git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.config/zsh/zsh-syntax
git clone https://github.com/Aloxaf/fzf-tab $HOME/.config/zsh/fzf-tab

mkdir -p $HOME/.local/share/

echo "======> Installing Inter font"
echo
git clone https://github.com/ayusshrathore/inter-nerd-font $HOME/.local/share/fonts/Inter

echo "======> Copying wallpapers"
cd
mkdir -p Pictures
cd Pictures
git clone https://gitlab.com/freaker/wallpapers Wallpapers
