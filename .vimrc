set nocompatible " no compatibility with legacy vi
set encoding=utf-8
set showcmd " show partial command in the bottom of the screen
filetype plugin indent on " enable filetype plugin detection, plugin and indentation

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" vundle plugins go between vundle#begin() and vundle#end()
call vundle#begin()

Plugin 'dracula/vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()

" display
syntax enable " enable syntax highlighting
set number " enable line numbers
set cursorline  " show the current line the cursor is on, makes redrawing slower
color dracula 

if (has('termguicolors'))
  set termguicolors " support 24-bit colour
endif

" whitespace
set nowrap 
set tabstop=2 shiftwidth=2 " number of spaces a tab counts for, number of spaces to autoindent
set expandtab " insert spaces when pressing tab in insert mode
set backspace=indent,eol,start

" searching
set hlsearch " highlight search matches
set incsearch  " highlight matches as you type
set ignorecase " ignore case when searching...
set smartcase " ...unless the search has uppercase characters

" status
set laststatus=2 " always show the status line
set noshowmode  " do not show the current mode in the bottom line (not needed with lightline)

" lightline
" let sets internal variables, see :h :internal-variables
let g:lightline = { 'colorscheme': 'dracula' }

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
