#!/bin/bash

# Creates symlinks to the real dotfiles

set -x
set -u

cd ~
ln -s dotfiles/zshrc ~/.zshrc
ln -s dotfiles/tmux.conf ~/.tmux.conf
ln -s dotfiles/ackrc ~/.ackrc
ln -s dotfiles/vimrc ~/.vimrc
ln -s dotfiles/gitconfig ~/.gitconfig
ln -s dotfiles/ctags ~/.ctags
ln -s dotfiles/cgdbrc ~/.cgdb/cgdbrc

git config --global core.excludesfile ~/dotfiles/gitignore_global
