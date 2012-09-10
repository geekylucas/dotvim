" makes mouse selection work nice(r)
set mouse=a

" pathogen
call pathogen#infect()
filetype plugin indent on

set backupdir=~/.vim/swap
set directory=~/.vim/swap

set nocompatible    " no vi compatibility
set number          " line numbers
set smartindent     " indent new lines when appropriate
set expandtab       " expand tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set hidden          " hide (don't unload) abandoned buffers
set ignorecase      " ignore case when searching
set smartcase       " except for searches that are upper case
set scrolloff=3     " keep this many lines above/below cursor
set ruler           " show line & column info
set visualbell      " no audible bell
set history=1000    " how many lines to remember
set modelines=0     " no hax0rs
set encoding=utf-8  " instead of latin1
set cursorline      " make the cursor stand out
set ttyfast         " smooth term redraw for fast connections
set laststatus=2    " always show a status line in the last window
set ttymouse=xterm2 " this makes mouse selection look as it should

" make tabs and trailing spaces visible when requested
set listchars=tab:>-,trail:-,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" convert to Ruby 1.9 hash syntax
noremap <leader>9 :s/:\(\S\+\)\s\+=>\s\+/\1: /g<cr>

" short info tokens, short command line messages, no intro.
set shortmess=atI

" colour scheme
syntax enable
set background=dark
colorscheme jellybeans_pda

" this means we don't have to worry about clipboard registers
set clipboard=unnamed

" ctrlp.vim
let g:ctrlp_max_height = 16
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|/tmp/cache',
  \ }

" powerline.vim
let g:Powerline_symbols = 'fancy'

" numbers.vim
nnoremap <F3> :NumbersToggle<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>
