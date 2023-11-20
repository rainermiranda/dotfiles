#!/usr/bin/env bash

# Go environment
export GOPATH=${HOME}/workspace/go
export PATH=$PATH:/usr/local/go/bin

# Neovim environment
export PATH=${PATH}:/usr/local/nvim/bin
alias neovim='nvim'
alias vim='nvim'

# Starship
export STARSHIP_CONFIG=${HOME}/.config/starship/starship.toml
eval "$(starship init bash)"

# asdf
. "$HOME/.asdf/asdf.sh"

# Load library files
for libfile in `find ${HOME}/.oh-my-shell/lib/ -mindepth 1`
do
	source "$libfile"
done
