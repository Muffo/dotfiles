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
* ctags


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
