#!/usr/bin/env bash

# Basic setup
sudo apt update

# ZSH
sudo apt install zsh
zsh --version
chsh -s $(which zsh)
echo $SHELL

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"