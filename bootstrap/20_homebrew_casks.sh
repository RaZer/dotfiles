#!/usr/bin/env sh

CASKROOM_PATH="$(brew --prefix)/Caskroom"
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=$CASKROOM_PATH --fontdir=/Library/Fonts"

brew cask install appcleaner
brew cask install dash
brew cask install dropbox
brew cask install flux
brew cask install github
brew cask install google-chrome
brew cask install google-drive
brew cask install iterm2
brew cask install skype
brew cask install slack
brew cask install spectacle
brew cask install sublime-text
brew cask install transmission
brew cask install vlc

# QuickLook Plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install webpquicklook

qlmanage -r

# Fonts
brew cask install caskroom/fonts/font-inconsolata
brew cask install caskroom/fonts/font-inconsolata-lgc
brew cask install caskroom/fonts/font-inconsolata-for-powerline
brew cask install caskroom/fonts/font-inconsolata-g-for-powerline
brew cask install caskroom/fonts/font-liberation-mono-for-powerline
brew cask install caskroom/fonts/font-meslo-lg-for-powerline
brew cask install caskroom/fonts/font-sauce-code-powerline
brew cask install caskroom/fonts/font-source-code-pro
brew cask install caskroom/fonts/font-source-code-pro-for-powerline
brew cask install caskroom/fonts/font-fira-mono-for-powerline




brew cleanup