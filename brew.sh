#!/usr/bin/env bash

# Install command-line tools using Homebrew
brew update

# Upgrade any already-installed formulate
brew upgrade


brew install zsh btop stow
brew install gnupg

brew install asmvik/formulae/yabai
brew install asmvik/formulae/skhd
brew install lazygit
brew install neovim


# Remove outdated versions from the cellar.
brew cleanup
