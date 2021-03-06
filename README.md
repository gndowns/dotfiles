# Dotfiles
Here are my dotfiles and some general instructions for setting up a new machine.

## Setting Up A New Machine


#### SSH Keys
First create new ssh keys for GitLab, GitHub, etc. following the instructions on [GitLab](https://docs.gitlab.com/ee/ssh/)

1. Create a new RSA SSH Key pair
```
$ ssh-keygen -t rsa -b 4096 -C "email@example.com"
```

2. Enter a file to save the key to e.g. `~/.ssh/id_rsa_github`

3. Press ENTER twice to skip adding a password

4. Copy the public key to your clipboard

On MacOS:
```
$ pbcopy < ~/.ssh/<name_of_key>.pub
```

On Linux:
```
$ xclip -sel clip < ~/.ssh/<name_of_key>.pub
```

5. Add the key to your GitHub / GitLab account in settings

6. Add your key pair to the SSH Agent
```
$ eval $(ssh-agent -s)
$ ssh-add ~/.ssh/<name_of_key>
```

7. Add a new entry for the key in `~/.ssh/config` e.g.
```
Host gitlab.com
  IdentityFile ~/.ssh/id_rsa_gitlab
```

8. Test your ssh connection
```
$ ssh -T git@github.com
$ ssh -T git@gitlab.com
```

#### Cloning This Repo

Now, install git and use ssh to clone this repo
```
$ sudo apt install git
$ git clone https://github.com/gndowns/dotfiles
$ cd dotfiles
```

#### Symlinking Config Files
This repo contains config files for vim, gnu screen, and zsh. To symlink your system's config files to the ones in this repo, run
```
$ ./symlink.sh
```
It will prompt you if you want to symlink each individual config file, so you can pick and choose which ones you want to use.

**Note**: This will overwrite your existing config files!

#### Vim Plugins
The included `.vimrc` config file relies on several plugins. You can install
them all using pathogen by running
```
$ ./vim_plugins.sh
```
This will download each of the plugins to `~/.vim/bundle`.

The plugins used are listed here:

- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
- [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
- [morhetz/gruvbox](https://github.com/morhetz/gruvbox)
- [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [wizicer/vim-jison](https://github.com/wizicer/vim-jison)
