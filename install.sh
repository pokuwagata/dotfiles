#!/bin/bash

#ln -s .vimrc ~/.vimrc
abspath=$(pwd)
ln -sfi $abspath/.zshrc ~/.zshrc
ln -sfi $abspath/.zshenv ~/.zshenv
ln -sfi $abspath/.tmux.conf ~/.tmux.conf

echo 'done'
