#!/bin/bash

# Script to symlink all config files in /dotfiles
# NOTE: will overwrite current local files

targets=('.vimrc' '.screenrc' '.zshrc' 'python.vim')
# locations for links
links=("$HOME/.vimrc" "$HOME/.screenrc" "$HOME/.zshrc"
  "$HOME/.vim/after/ftplugin/python.vim")

for ((i=0; i<${#targets[@]}; i++)); do
  t="${targets[i]}"
  l="${links[i]}"
  # ask permission to overwrite existing file
  read -p "Are you sure you want to overwrite $l ? [y/n] " yn
  if [[ "$yn" == 'y' ]]; then
    # remove old file (to avoid 'file exists' error)
    rm -f $l
    # symbolic link target link_name
    ln -s $HOME/dotfiles/$t $l
  fi
done
