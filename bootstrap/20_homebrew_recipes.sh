#!/usr/bin/env sh

# Configure install environment
export RBENV_ROOT=$(brew --prefix)/var/rbenv

ensure_directory_exists() {
  if [ ! -d $1 ]; then
    mkdir -p $1
  fi
}

brew_install() {
  echo "Installing $1..."

  brew install $1 $2
}

brew_expand_alias() {
  brew info "$1" 2>/dev/null | head -1 | awk '{gsub(/:/, ""); print $1}'
}

brew_launch() {
  ensure_directory_exists "$HOME/Library/LaunchAgents"

  local name="$(brew_expand_alias "$1")"
  local plist="homebrew.mxcl.$name.plist"

  echo "Launching $1..."
  ln -sf "/usr/local/opt/$name/$plist" "$HOME/Library/LaunchAgents/"

  launchctl load "$HOME/Library/LaunchAgents/$plist" >/dev/null
}

echo "Updating Homebrew..."
brew update
brew upgrade

brew_install 'vim' '--override-system-vi'
brew_install 'git'
brew_install 'tmux'
brew_install 'reattach-to-user-namespace'


# Ruby
brew_install 'rbenv'
brew_install 'ruby-build'

# Storage
brew_install 'postgres'
brew_install 'redis'

# Dotfiles management
brew tap 'thoughtbot/formulae'
brew_install 'rcm'

# More recent versions of system utils
brew tap homebrew/dupes
brew_install 'coreutils'
brew install 'homebrew/dupes/openssh' '--with-keychain-support'
brew install 'homebrew/dupes/grep'


# Other
brew_install 'wget' '--with-iri'
brew_install 'ack'
brew_install 'rename'
brew_install 'tree'

# PHP
brew tap homebrew/php
brew_install 'homebrew/php/php56' # TODO: set proper options

# Cask
brew_install 'caskroom/cask/brew-cask'

# Launch services
brew_launch 'redis'
brew_launch 'postgresql'

brew cleanup

