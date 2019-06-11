" Gob's VIMRC

" Pathogen
execute pathogen#infect()


" THE CLASSICS
set nocompatible
syntax enable
filetype plugin indent on

" line numbers
set number

" put colored bar at column 80 (for line length)
set colorcolumn=80

" Disable Auto comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=o formatoptions-=r

" better command-line completion
set wildmenu


" Show relative file path
set laststatus=2
set statusline=%f


" COLOR
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"
set background=dark

" for tmux
set t_Co=256


" TABS TO SPACES
" tab key => spaces
set expandtab
" tab key => 2 spaces
set tabstop=2
" indent inserts 2 spaces
set shiftwidth=2


" change leader
let mapleader = "'"

" paranthesis and bracket matching with ctrl key
inoremap { {}<Esc>i

" escape paranthesis
inoremap <C-f> <Esc>la

" make indented block thing
inoremap <C-d> <CR><Esc>O

" go to end of line while in insert
inoremap <C-a> <Esc>A

inoremap <C-o> ()<Esc>i

" space inserts single character in normal mode
:nnoremap <Space> i_<Esc>r

" PLUGINS

" nerdcommenter
" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" toggle background light/dark
map <Leader>d :let &background = ( &background == "dark" ? "light" : "dark" )<CR>


" fzf
set rtp+=~/.fzf
" map ctrl-p to file find
map <C-p> :Files<CR>
