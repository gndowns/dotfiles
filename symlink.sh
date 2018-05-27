#!/bin/bash

# Script to symlink all config files in /dotfiles
# NOTE: will overwrite current local files

dotfiles=('.vimrc' '.screenrc' '.zshrc')

for f in "${dotfiles[@]}"; do
  ln -s ./$f $HOME/$f
done
