set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" golang
Plugin 'fatih/vim-go'
" ctrlp
Plugin 'ctrlpvim/ctrlp.vim'
" airline & themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" fugitive (a git wrapper)
Plugin 'tpope/vim-fugitive'
" ack
Plugin 'mileszs/ack.vim'
" colour schemes
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" makes mouse selection work nice(r)
set mouse=a

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
"set cc=79           " a visual marker for 80 characters wide

" vim split window handling
" navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" more natural spit opening (split to right & bottom)
set splitbelow
set splitright

" shortcut for saving file, should save a few keystrokes
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

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
" set background=dark
colorscheme molokai

" this means we don't have to worry about clipboard registers
set clipboard=unnamed

" ctrlp.vim
let g:ctrlp_max_height = 32
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|/tmp/cache|\.DS_Store$\|/node_modules$',
  \ }

" airline
" https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='molokai'
let g:airline_enable_fugitive=1
" let g:airline_powerline_fonts=1

" golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
