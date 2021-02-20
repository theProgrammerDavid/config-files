#!/bin/bash

sudo apt install curl
mkdir -p ~/.vim
mkdir -p ~/.config/nvim
mkdir -p ~/.config/regolith
touch ~/init.vim

if [ ! -f ~/.vim/autoload/plug.vim ]; then
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
rm ~/.bashrc
cp ./.bashrc ~/.bashrc
cp ./.vimrc ~/.vimrc
cp ./.bash_aliases ~/.bash_aliases
cp ~/init.vim ~/.config/nvim/init.vim
cp ./Xresources ~/.config/regolith/

echo "Change Download a NERD-AWESOME font and install it and change the default font"
echo "Bash font size 13"
