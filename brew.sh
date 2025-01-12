#!/usr/bin/env bash

# Install command-line tools using Homebrew
brew update

# Upgrade any already-installed formulate
brew upgrade

# Save Homebrew's installed location.
BREW_PREFIX=$(brew --perfix)

brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

brew install moreutils
brew install findutils

brew install gnu-sed --with-default-names
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
#if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells
#  chsh -s "${BREW_PREFIX}/bin/bash"
#fi

brew install wget --with-iri
brew install gnupg
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install gmp

# Install fonts
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew install font-hack-nerd-font

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
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
