#!/usr/bin/env bash

# Basic setup
sudo apt update
sudo apt install -y git curl wget
git config credential.helper store

# ZSH
sudo apt install -y zsh
zsh --version

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"