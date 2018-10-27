#!/bin/bash
# A quick script to setup my vim configuration and all of
# its dependencies on a new machine
# Author: Andrew Roberts
# Last Updated: 26 October, 2018

# Set up symbolic link to .vimrc in home directory
ln -sf .vimrc ~/.vimrc

# Load in colors from git repository, cleanup when finished
git clone https://github.com/flazz/vim-colorschemes
cd vim-colorschemes
if [ ! -d ~/.vim ] ; then
    mkdir ~/.vim
fi
cp colors/* ~/.vim/colors/
cd ..
rm -rf ./vim-colorschemes

# Download and setup Pathogen
mmkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

