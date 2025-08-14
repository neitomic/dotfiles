#!/usr/bin/env bash

# Install command-line tools using Homebrew
brew update

# Upgrade any already-installed formulate
brew upgrade

# Save Homebrew's installed location.
BREW_PREFIX=$(brew --perfix)

brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

brew install gnu-sed --with-default-names

# Switch to using brew-installed bash as default shell
#if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells
#  chsh -s "${BREW_PREFIX}/bin/bash"
#fi

brew install wget --with-iri
brew install gnupg

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install git-lfs

# Remove outdated versions from the cellar.
brew cleanup
