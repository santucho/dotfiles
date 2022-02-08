#!/bin/bash

# Install Homebrew Package Manager
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

./brew.sh

# Configuring Vim
cp -r .vim/ ~/vim/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Make ZSH the default shell environment
chsh -s $(which zsh)

cp .gitconfig ~
cp .gitignore ~

cp .zshrc ~
cp -r .zsh/ ~/.zsh/
source ~/.zshrc
