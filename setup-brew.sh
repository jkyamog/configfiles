#!/bin/sh

brew update
brew upgrade

# install brew-cask and java early, as dependencies on others
brew services

# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# brew install bash
# brew install bash-completion
# brew install zsh # macos sanoma includes current version 
brew install zsh-completions 

brew install gnu-sed # override built-in sed, fix on path

# git
brew install git
brew install tig

# jvm stuff
# brew cask install java
# brew install leiningen
# brew install maven
# brew install sbt

# node

# dev stuff
# brew install mongodb
# brew install nginx
brew install npm
# brew install pcre             # perl regex
# brew install ssh-copy-id
# brew install tmux
# brew install reattach-to-user-namespace
# brew install python

# useful utils
# brew install vim # macos sanoma includes current version
# brew install z
brew install bat
brew install jq

# some apps still need rosetta 2
sudo softwareupdate --install-rosetta

# useful user apps
# brew install google-drive
brew install visual-studio-code
brew install lm-studio 
brew install microsoft-edge
# brew install lg-onscreen-control
brew install betterdisplay
brew install podman-desktop

# Remove outdated versions from the cellar.
brew cleanup
