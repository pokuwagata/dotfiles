#!/bin/bash

abspath=$(pwd)
ln -sfi $abspath/.vimrc ~/.vimrc
ln -sfi $abspath/.vim ~/.vim
ln -sfi $abspath/.zshrc ~/.zshrc
ln -sfi $abspath/.zshenv ~/.zshenv
ln -sfi $abspath/.config/sheldon/plugins.toml ~/.config/sheldon/plugins.toml
ln -sfi $abspath/.config/ghostty/config.ghostty ~/.config/ghostty/config.ghostty
ln -sfi $abspath/.config/yazi ~/.config
ln -sfi $abspath/.config/nvim ~/.config

echo 'done'
