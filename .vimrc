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
Plugin 'Yggdroot/indentLine'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'dense-analysis/ale'

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

" ale
let g:ale_sign_error = '🚫'
let g:ale_sign_warning = '⚠️'

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'javascript.jsx': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'elixir': ['mix_format'],
\   'ruby': ['rubocop']
\}

let g:ale_lint_delay = 5000
let g:ale_fix_on_save = 1 " fix files automatically on save

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

" split to the right and below
set splitright
set splitbelow

" bindings

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

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" replace normal mode ctrl+p with fzf :Files
nnoremap <C-p> :Files<CR>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
imap <c-x><c-f> <plug>(fzf-complete-path)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
