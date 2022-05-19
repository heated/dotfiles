#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/config.fish ~/.config/fish/config.fish
ln -s ${BASEDIR}/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/vim/ ~/.vim/

ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf
