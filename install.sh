#!/bin/bash

# ensure stow is installed

mkdir -p ~/.config/alacritty
mkdir -p ~/.config/tmux
mkdir -p ~/.config/nvim

stow alacritty -t ~/.config/alacritty
stow tmux -t ~/.config/tmux
stow nvim -t ~/.config/nvim
