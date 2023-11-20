#!/usr/bin/env bash

# Load environment
for envfile in `find ${HOME}/.oh-my-shell/env/ -mindepth 1`
do
	source "$envfile"
done

# Load library
for libfile in `find ${HOME}/.oh-my-shell/lib/ -mindepth 1`
do
	source "$libfile"
done
