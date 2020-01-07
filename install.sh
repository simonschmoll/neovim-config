#!/bin/bash

echo "############# Installing brew, vim plug and tpm #################"

if ! type "brew" &> /dev/null; then
	echo "Installing homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if ! type "git" &> /dev/null; then
     echo "Please install git, either through oh my zsh or brew"
     exit 1
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "############# Copying dotfiles #################"
mkdir -p $HOME/.config/nvim && cp dotfiles/init.vim $HOME/.config/nvim/
cp dotfiles/.zshrc dotfiles/.tmux.conf dotfiles/.gitconfig $HOME/

echo "############# Checking which components to install #################"

if ! type "nvim" &> /dev/null; then
	echo "############# Installing neovim #################"
	brew install neovim
    nvim +PlugInstall +qall &> /dev/null
fi

if ! type "tmux" &> /dev/null; then
	echo "############# Installing tmux #################"
	brew install tmux
fi

if ! type "tmuxinator" &> /dev/null; then
	echo "############# Installing tmuxinator #################"
	brew install tmuxinator
fi

if ! type "fzf" &> /dev/null; then
	echo "############# Installing fzf #################"
	brew install fzf
fi

if ! type "z" &> /dev/null; then
	echo "############# Installing z #################"
	brew install z
fi


