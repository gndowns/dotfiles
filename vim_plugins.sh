#!/bin/bash

# Download / update vim plugins

# setup vim-pathogen for managing plugins
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# git repos for plugins
# format: github_username/repo_name
PLUGINS=( 'junegunn/fzf.vim' 'mattn/emmet-vim' 'morhetz/gruvbox'
'scrooloose/nerdcommenter' 'scrooloose/nerdtree' 'tpope/vim-fugitive' )

for p in "${PLUGINS[@]}"; do
  # github url
  URL="https://github.com/$p"
  # repo name, no username
  REPO=`echo $p | cut -d '/' -f 2`
  # local path to directory where repo will be cloned
  DIR="$HOME/.vim/bundle/$REPO"
  # if local directory already exists update, else clone
  if cd $DIR; then
    # update
    git pull
  else
    # download
    git clone $URL $DIR
  fi
done
