# Dotfiles

A collection of my personal dotfiles and work space settings.

## Dotfiles Installation

Clone the repository in your home folder and run the `bootstrap.sh`:

    git clone https://github.com/Muffo/dotfiles.git
    cd dotfiles
    ./bootstrap.sh

## ZSH Configuration

Zsh with [oh-my-zsh](http://ohmyz.sh/):

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

At the end of the script, a prompt will ask to setup ZSH as default shell.

## Command Line Tools

* [Tmux](https://tmux.github.io): terminal multiplexer
* [ack](http://beyondgrep.com/): a tool like grep, optimized for programmers
* [fzf](https://github.com/junegunn/fzf): command-line fuzzy finder
* [ydiff](https://github.com/ymattw/ydiff): colored, incremental diff (fomerly cdiff)
* [cgdb](https://cgdb.github.io): console front-end to the GNU debugger
* [tig](https://jonas.github.io/tig): text-mode interface for Git
* ctags
* cscope
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

## Extras

### Putty Configuration

See [Solarized - PuTTY settings](https://github.com/altercation/solarized/tree/master/putty-colors-solarized)

### Git reup

This is a convenient script to sync your local branch with remote.
It performs the following operations: `stash save`, `pull --rebase` and `stash pop`.
Copy the script git-reup to a folder inside your `$PATH`.

### AutoHotKey

On Windows, install [AutoHotKey](https://autohotkey.com) and use the script [CapsLock-Fix.ahk](CapsLock-Fix.ahk) for the following shortcuts:

| Shortcut                         | Output                           |
| -------------------------------- | -------------------------------- |
| CAPSLOCK + { k, h, j, l }        | { Up, Left, Down, Right }        |
| CAPSLOCK + ALT + { k, h, j, l }  | CTRL + { Up, Left, Down, Right } |
| CAPSLOCK + CTRL + { k, h, j, l } | ALT + { Up, Left, Down, Right }  |
| CAPSLOCK + { u, o }              | { Home, End }                    |
| CAPSLOCK + { e, d }              | { PageUp, PageDown }             |
| CAPSLOCK + < key >               | CTRL + < key >                   |
| CAPSLOCK + ENTER                 | BACKSPACE                        |

To start the script automatically:

 1. Windows start > **Run** and type `shell:startup`.
 2. Create a shortcut of the script in the Startup Folder: copy the script then, right-click and **Paste Shortcut**.
 
Inspired by [madslundt/keybindings](https://github.com/madslundt/keybindings).

## License

    Dotfiles
    Copyright (C) 2016-2020  Andrea Grandi

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
