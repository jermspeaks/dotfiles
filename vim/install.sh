#/bin/bash

echo "Installing Vundle - Vim's package manager"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing preset plugins"
vim +PluginInstall +qall

echo "update git to the latest version:"
echo "https://git-scm.com/download/mac"

open "https://git-scm.com/download/mac"
