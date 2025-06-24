#!/bin/bash

# ensure stow is installed

mkdir -p ~/.config/alacritty
mkdir -p ~/.config/wezterm
mkdir -p ~/.config/tmux
mkdir -p ~/.config/nvim
mkdir -p ~/.config/fish

stow alacritty -t ~/.config/alacritty
stow wezterm -t ~/.config/wezterm
stow tmux -t ~/.config/tmux
stow nvim -t ~/.config/nvim
stow fish -t ~/.config/fish
