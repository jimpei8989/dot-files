#! /usr/bin/env bash

# Bash
ln -s ~/Configs/bash_profile ~/.bash_profile
ln -s ~/Configs/zshrc ~/.zshrc

# Vim
ln -s ~/Configs/vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/Configs/vim_colors ~/.vim/colors

# Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/Configs/tmux.conf ~/.tmux.conf




