set backupdir=~/.vim/swap
set directory=~/.vim/swap
set visualbell

" makes mouse selection work nice(r)
set mouse=a

" this means we don't have to worry about clipboard registers
set clipboard=unnamed

" pathogen
call pathogen#infect()
syntax on
filetype plugin indent on
