#!/bin/sh

brew update
brew upgrade

# install brew-cask and java early, as dependencies on others
brew install caskroom/cask/brew-cask

brew tap homebrew/services

brew tap tldr-pages/tldr
brew install tldr

# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
brew install bash
brew install bash-completion
brew install zsh

brew install gnu-sed --with-default-names  # override built-in sed

# git
brew install git
brew install tig

# jvm stuff
brew cask install java
brew install leiningen
brew install maven
brew install sbt

# dev stuff
# brew install mongodb
brew install nginx
brew install node
brew install pcre             # perl regex
brew install ssh-copy-id
brew install tmux
brew install reattach-to-user-namespace

# useful utils
brew install vim
brew install z

# useful user apps
brew cask install dockertoolbox
brew cask install google-chrome
brew cask install virtualbox
brew cask install dropbox
brew cask install keepassx
brew cask install vmware-horizon-client
brew cask install flux
brew cask install google-drive

# Remove outdated versions from the cellar.
brew cleanup
