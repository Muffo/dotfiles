# Dotfiles

A collection of my personal dotfiles

## Shell

Zsh with [oh-my-zsh](http://ohmyz.sh/):

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


## Command line tools

* [Tmux](https://tmux.github.io): terminal multiplexer
* [ack](http://beyondgrep.com/): a tool like grep, optimized for programmers
* [fzf](https://github.com/junegunn/fzf): command-line fuzzy finder
* [cdiff](https://github.com/ymattw/cdiff): colored, incremental diff 
* [cgdb](https://cgdb.github.io): console front-end to the GNU debugger
* [tig](https://jonas.github.io/tig): text-mode interface for Git
* ctags
* [bat](https://github.com/sharkdp/bat): a cat(1) clone with syntax highlighting

## Vim Plugins

Use [Vundle](https://github.com/VundleVim/Vundle.vim) to install 
and manage the VIM plugins:

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Brief help:

    :PluginList       - lists configured plugins
    :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    :PluginSearch foo - searches for foo; append `!` to refresh local cache
    :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

## Extra

### Putty configuration

See [Solarized - PuTTY settings](https://github.com/altercation/solarized/tree/master/putty-colors-solarized)

### Git reup

This is a convenient script to sync your local branch with remote.
It performs the following operations: `stash save`, `pull --rebase` and `stash pop`.
Copy the script git-reup to a folder inside your `$PATH`.

## License

    Dotfiles
    Copyright (C) 2016-2018  Andrea Grandi

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
