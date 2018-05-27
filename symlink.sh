#!/bin/bash

# Script to symlink all config files in /dotfiles
# NOTE: will overwrite current local files

dotfiles=('.vimrc' '.screenrc' '.zshrc')

for f in "${dotfiles[@]}"; do
  # ask permission to overwrite existing file
  read -p "Are you sure you want to overwrite $HOME/$f ? [y/n] " yn
  if [[ "$yn" == 'y' ]]; then
    # remove old file (to avoid 'file exists' error)
    rm $HOME/$f
    # symbolic link target link_name
    ln -s $HOME/dotfiles/$f $HOME/$f
  fi
done
