#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Configure Homebrew Cask
CASKROOM_PATH="$(brew --prefix)/Caskroom"
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=$CASKROOM_PATH --fontdir=/Library/Fonts"

# Local config
[[ -f ~/.dotfiles/local/zshrc ]] && source ~/.dotfiles/local/zshrc
