#!/bin/bash

if [ -x $(command -v brew) ]; then
	echo "You first need to install brew"
	exit 1
fi

echo "############# Checking which components to install #################"

if [ -x $(command -v nvim) ]; then
	echo "############# Installing neovim #################"
	brew install neovim
fi

if [ -x $(command -v nvim) ]; then
	echo "############# Installing neovim #################"
	brew install neovim
fi

if [ -x $(command -v tmux) ]; then
	echo "############# Installing tmux #################"
	brew install tmux
fi

if [ -x $(command -v fzf) ]; then
	echo "############# Installing fzf #################"
	brew install fzf
fi

if [ -x $(command -v fzf) ]; then
	echo "############# Installing fzf #################"
	brew install fzf
fi


