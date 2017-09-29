#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

source ~/.path

# Set rbenv to Hombrew's var/rbenv directory
export RBENV_ROOT=$(brew --prefix)/var/rbenv

# Local config
[[ -f ~/.dotfiles/local/zshenv ]] && source ~/.dotfiles/local/zshenv
