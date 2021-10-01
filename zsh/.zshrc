export DOTFILES=~/github/tonyganch/dotfiles

source $DOTFILES/prompt/airline-prompt.sh
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/exports.zsh
source $DOTFILES/zsh/functions.zsh
source $DOTFILES/zsh/git.zsh
source $DOTFILES/zsh/node.zsh
source $DOTFILES/zsh/syntax-highlighting.zsh
source $DOTFILES/zsh/tmux.zsh
source $DOTFILES/zsh/vim.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt complete_aliases
unsetopt global_rcs
autoload up-line-or-beginning-search
autoload down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

plugins=(
  git
  osx
)
