# Dotfiles
Here are my dotfiles and some general instructions for setting up a new machine.

## Setting Up A New Machine

### Cloning This Repo

First, clone this repo and cd into it
```
$ git clone https://github.com/gndowns/dotfiles
$ cd dotfiles
```

### SSH Keys
Create new ssh keys for GitLab, GitHub, etc. following the instructions on [GitLab](https://docs.gitlab.com/ee/ssh/)

1. Create a new RSA SSH Key pair
```
$ ssh-keygen -t rsa -b 4096 -C "email@example.com"
```

2. Enter a file to save the key to e.g. `~/.ssh/id_rsa_github`

3. Pree ENTER twice to skip adding a password

4. Copy the public key to your clipboard
On MacOS:
```
$ pbcopy < `~/.ssh/id_rsa.pub
```

On Linux:
```
$ xclip -sel clip < ~/.ssh/id_rsa.pub
```

5. Add the key to your GitHub / GitLab account in settings

### VIM Plugins
- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
- [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
- [morhetz/gruvbox](https://github.com/morhetz/gruvbox)
- [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [wizicer/vim-jison](https://github.com/wizicer/vim-jison)
