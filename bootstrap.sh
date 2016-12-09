#!/bin/bash

# Creates symlinks to the real dotfiles

set -x
set -u

cd ~
ln -s dotfiles/zshrc ~/.zshrc
ln -s dotfiles/vimrc ~/.vimrc
ln -s dotfiles/gitconfig ~/.giconfig
