#/bin/bash

echo "Installing Vundle - Vim's package manager"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing preset plugins"
vim +PluginInstall +qall
