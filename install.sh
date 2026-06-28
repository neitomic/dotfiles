#!/bin/bash

# ensure stow is installed

mkdir -p ~/.config/alacritty
mkdir -p ~/.config/wezterm
mkdir -p ~/.config/tmux
mkdir -p ~/.config/nvim
mkdir -p ~/.config/yabai
mkdir -p ~/.config/skhd

stow alacritty -t ~/.config/alacritty
stow wezterm -t ~/.config/wezterm
stow tmux -t ~/.config/tmux
stow nvim -t ~/.config/nvim
stow yabai -t ~/.config/yabai
stow skhd -t ~/.config/skhd
ln -s ~/dotfiles/ideavimrc ~/.ideavimrc

# useful to access obsidian files directly
ln -s "$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/NEITOMIC/NEITOMIC" ~/obsidian
