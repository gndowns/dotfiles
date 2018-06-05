#!/bin/bash

# Script to symlink all config files in /dotfiles
# NOTE: will overwrite current local files

dotfiles=('.vimrc' '.screenrc' '.zshrc', 'python.vim')
# locations for links
targets=("$HOME/.vimrc" "$HOME/.screenrc" "$HOME/.zshrc"
  "$HOME/.vim/after/ftplugin/python.vim")

# for f in "${dotfiles[@]}"; do
for ((i=0; i<${#dotfiles[@]}; i++)); do
  f="${dotfiles[i]}"
  t="${targets[i]}"
  # ask permission to overwrite existing file
  read -p "Are you sure you want to overwrite $t ? [y/n] " yn
  if [[ "$yn" == 'y' ]]; then
    # remove old file (to avoid 'file exists' error)
    rm -f $t
    # symbolic link target link_name
    ln -s $HOME/dotfiles/$f $t
  fi
done
