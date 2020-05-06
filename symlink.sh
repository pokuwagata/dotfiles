#!/bin/bash

abspath=$(pwd)
ln -sfi $abspath/.vimrc ~/.vimrc
ln -sfi $abspath/.vim ~/.vim
ln -sfi $abspath/.zshrc ~/.zshrc
ln -sfi $abspath/.zshenv ~/.zshenv
ln -sfi $abspath/.tmux.conf ~/.tmux.conf

echo 'done'
