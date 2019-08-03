set nocompatible " no compatibility with legacy vi
set encoding=utf-8
set showcmd
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'dracula/vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()

" display
syntax enable
set number
set cursorline
color dracula

if (has('termguicolors'))
  set termguicolors
endif

let g:lightline = { 'colorscheme': 'dracula' }

" whitespace
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase


" status
set laststatus=2
set noshowmode

" don't use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" really, just don't
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
