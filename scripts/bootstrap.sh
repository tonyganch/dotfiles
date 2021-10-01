#!/bin/bash

export DOTFILES=~/github/tonyganch/dotfiles

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

# Install vim plugins.
echo ''
echo 'Installing vim plugins...'
vim -c PluginInstall -c q -c q

echo ''
echo 'All done!'
