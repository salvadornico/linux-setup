#!/usr/bin/env zsh

git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt
ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="spaceship"/g' ~/.zshrc
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc

source ~/.zshrc

# NodeJS
sudo pacman -S nodejs npm semver nodejs-nopt node-gyp

mkdir "${HOME}/.npm-packages"
npm config set prefix "${HOME}/.npm-packages"

sed '$ a NPM_PACKAGES="${HOME}/.npm-packages"' ~/.zshrc
sed '$ a export PATH="$PATH:$NPM_PACKAGES/bin"' ~/.zshrc
sed '$ a export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"' ~/.zshrc

source ~/.zshrc

npm install --global trash-cli tldr n

echo "Log out then back in for full clean experience"