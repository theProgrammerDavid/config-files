#!/bin/bash

sudo apt install curl
mkdir -p ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
rm ~/.bashrc
cp ./.bashrc ~/.bashrc
cp ./.vimrc ~/.vimrc
cp ./.bash_aliases ~/.bash_aliases
