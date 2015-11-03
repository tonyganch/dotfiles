export DOTFILES=~/GitHub/tg/dotfiles

source $DOTFILES/prompt/airline-prompt.sh
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/exports.zsh
source $DOTFILES/zsh/functions.zsh
source $DOTFILES/zsh/git.zsh
source $DOTFILES/zsh/node.zsh
source $DOTFILES/zsh/syntax-highlighting.zsh
source $DOTFILES/zsh/tmux.zsh
source $DOTFILES/zsh/vim.zsh

export NVM_DIR="/Users/atcareva/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
