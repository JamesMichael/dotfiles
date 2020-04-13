#!/usr/bin/env bash

# Install vim8 plugins into .vim/pack/plugins/start
# - start is for plugins that are to load when vim starts
# - opt is for plugins that can be loaded when needed
PLUGIN_BASE="$HOME/.vim/pack/plugins/"

mkdir -p "$PLUGIN_BASE"/{start,opt}
cd "$PLUGIN_BASE/start"

git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/fatih/vim-go.git
git clone https://tpope.io/vim/fugitive.git
git clone https://github.com/ConradIrwin/vim-bracketed-paste.git
