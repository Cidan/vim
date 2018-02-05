#!/bin/sh
curl -fLo ~/.nvim https://github.com/neovim/neovim/releases/download/v0.2.2/nvim.appimage
chmod +x ~/.nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim
alias vim=~/.nvim
vim +PlugInstall +qall

echo "NeoVim setup and installed, but you must add the alias like so:"
echo "alias vim=~/.nvim"
