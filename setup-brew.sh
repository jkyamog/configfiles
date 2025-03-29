#!/bin/sh

brew update
brew upgrade

# Shell utilities
brew install zsh-completions
brew install gnu-sed
brew install watch

# Git tools
brew install git
brew install git-lfs
brew install tig

# Python environment
brew install python
brew install uv

# Install miniforge
brew install --cask miniforge

# Node.js
brew install node

# Terminal utilities
brew install bat
brew install jq
brew install smartmontools

# Some apps still need rosetta 2
sudo softwareupdate --install-rosetta

# Applications
brew install --cask docker
brew install --cask visual-studio-code
# brew install --cask cursor
brew install --cask microsoft-edge
brew install --cask betterdisplay


# Conditional install for M4 Max only
if [[ $(sysctl -n machdep.cpu.brand_string) == *"M4 Max"* ]]; then
  brew install ollama
  brew install --cask lm-studio 
fi

# Remove outdated versions from the cellar
brew cleanup
