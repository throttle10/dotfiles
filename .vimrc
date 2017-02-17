set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'majutsushi/tagbar'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'Valloric/YouCompleteMe'

Plugin 'NLKNguyen/papercolor-theme' 

call vundle#end()
filetype plugin indent on

set nowrap			" don't wrap lines
set tabstop=4		" change tab by 4 spaces
set backspace=indent,eol,start
					" allow backspacing over everything in insert mode
set autoindent 		" use indentation of previous line
set smartindent 	" use intelligent indentation for C
set noexpandtab		" doesn't expand tabs with spaces

set shiftwidth=4
set number 			" turn line numbers on
set showmatch 		" highlight matching braces

set t_Co=256
set background=dark
colorscheme PaperColor

set clipboard=unnamed

set textwidth=120
let &colorcolumn=&textwidth
highlight ColorColumn ctermbg=gray

" searching options
set ignorecase
set hlsearch
set incsearch

" use bash-style completion
set wildmode=longest:list,full
set wildignore=**.swp,*.bak,*.pyc
set fileencoding=utf-8

"disable beep
set novisualbell
set noerrorbells

syntax on

let mapleader=','

set ls=2

set pastetoggle=<F2>

" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Airline
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1

" YCM
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_extra_conf_globlist = ['~/*']
let g:ycm_enable_diagnostic_highlighting = 0
map gd :YcmCompleter GoTo<CR>

" TagBar
nmap <F3> :TagbarOpenAutoClose<CR>

" C/C++ files
autocmd filetype c,cpp set cin
