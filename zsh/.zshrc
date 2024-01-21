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

if [ -s ~/.sidekick_zshrc ]; then
  source ~/.sidekick_zshrc
fi

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
  aws
)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tonyganch/google-cloud-sdk/path.zsh.inc' ]; then
  . '/Users/tonyganch/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tonyganch/google-cloud-sdk/completion.zsh.inc' ]; then
  . '/Users/tonyganch/google-cloud-sdk/completion.zsh.inc'
fi
