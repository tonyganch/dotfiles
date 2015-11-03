#!/bin/bash

export DOTFILES=~/GitHub/tg/dotfiles

# Make symlinks.
echo 'Making symlinks...'
ln -sf $DOTFILES/git/.gitconfig ~/.gitconfig
echo '  .gitconfig'
ln -sf $DOTFILES/git/.gitignore ~/.gitignore
echo '  .gitignore'
ln -sf $DOTFILES/tmux/.tmux.conf ~/.tmux.conf
echo '  .tmux.conf'
ln -sf $DOTFILES/vim/.vimrc ~/.vimrc
echo '  .vimrc'
ln -sf $DOTFILES/zsh/.zshrc ~/.zshrc
echo '  .zshrc'

# Build vim.
test -d ~/vim || {
  echo ''
  echo 'Installing vim...'
  git clone git@github.com:b4winckler/vim.git ~/vim

  echo ''
  echo 'Building vim from sources...'
  $DOTFILES/vim/rebuild-vim.sh
}

# Install vim plugins.
echo ''
echo 'Installing vim plugins...'
vim -c PluginInstall -c q -c q

echo ''
echo 'All done!'
