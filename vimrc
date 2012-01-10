set backupdir=~/.vim/swap
set directory=~/.vim/swap
set visualbell

" makes mouse selection work nice(r)
set mouse=a

" this means we don't have to worry about clipboard registers
set clipboard=unnamed

" pathogen
call pathogen#infect()
filetype plugin indent on

" colour scheme
syntax enable
set background=dark
colorscheme jellybeans

