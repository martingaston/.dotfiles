set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'
Plugin 'itchyny/lightline.vim'
Plugin 'sjl/badwolf'
Plugin 'sheerun/vim-polyglot'
Plugin 'yggdroot/indentline'
Plugin 'w0rp/ale'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
set number " Show line numbers
set laststatus=2 " Always display the status line
set noshowmode " Remove the text --INSERT-- from the bottom of the screen (no need with lightline)
set showmatch " When selecting parenthesis it will select the one matching

if (has("termguicolors"))
    set termguicolors
endif

syntax on

set background=dark
colorscheme dracula

set backspace=indent,eol,start
set tabstop=2 " number of visual spaces per tab (what vim interprets a tab character as)
set softtabstop=2 " number of spaces a tab counts for when the tab button is pressed
set expandtab " turns tabs into spaces
set shiftwidth=2 " setting shiftwidth to 0 means it uses the tabstop value
set incsearch " search as characters are entered
set hlsearch " highlight matches

set wildmenu " visual autocomplete in command menu

set cursorline " highlight the current line
let g:ale_fix_on_save = 1

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'javascript.jsx': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'elixir': ['mix_format'],
\   'ruby': ['rubocop']
\}

let g:ale_lint_delay = 5000

set clipboard=unnamed

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
