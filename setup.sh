#! /usr/bin/env bash

PREFIX_DIR="$HOME/.dot-files"

# ZSH
if [[ -f $HOME/.zshrc ]]; then rm $HOME/.zshrc; fi
ln -s $PREFIX_DIR/.zshrc $HOME/.zshrc

# OH-MY-ZSH
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
if [[ -d $HOME/.oh-my-zsh/custom/themes ]]; then rm -rf $HOME/.oh-my-zsh/custom/themes; fi
ln -s $PREFIX_DIR/omzsh_themes $HOME/.oh-my-zsh/themes

# Vim
if [[ -f $HOME/.vimrc ]]; then rm $HOME/.vimrc; fi
ln -s $PREFIX_DIR/.vimrc $HOME/.vimrc

if [[ -d $HOME/.vim ]]; then rm -rf $HOME/.vim/; fi
mkdir $HOME/.vim
ln -s $PREFIX_DIR/vim_colors $HOME/.vim/colors

# Vim-Plug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

# Tmux
if [[ -f $HOME/.tmux.conf ]]; then rm $HOME/.tmux.conf; fi
ln -s $PREFIX_DIR/.tmux.conf $HOME/.tmux.conf

# TPM
if [[ -d $HOME/.tmux ]]; then rm -rf $HOME/.tmux/; fi
mkdir $HOME/.tmux
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

