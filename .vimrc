" dulanov's (http://dulanov.name) Vim Config
filetype off
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible
set modelines=0

let mapleader=","
let maplocalleader=","

set hidden
set nowrap
set backspace=indent,eol,start

set title
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set shiftround
set showmatch
set showmode
set ignorecase
set smartcase
set smarttab

set autoindent
set nosmartindent
set cindent
set cinkeys=!^F
set cinoptions=(0t0c1

set nohls
set hlsearch
set incsearch

set history=1000

set novisualbell
set noerrorbells
set vb t_vb=

set ruler
set showcmd
set wildmenu
set lazyredraw
set cursorline

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

au BufNewFile,BufRead rebar.config set filetype=erlang

set nobackup
set noswapfile
set directory=~/.vim/.tmp,~/tmp,/tmp

au FocusLost * :wa

set mouse=a
set clipboard=unnamed

if version >= 703
  set relativenumber
  set colorcolumn=80,120

  set undofile
  set undodir=/tmp
endif

if &t_Co > 2 || has("gui_running")
   syntax on
endif

if &t_Co >= 256 || has("gui_running")
   colorscheme mustang
endif

if has("gui_running")
    set guioptions-=r
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions+=c
    set cursorline
    set lines=31
    set columns=96
    if has("gui_gtk2")
        set guifont=DroidSansMono\ 9
    elseif has("X11")
        set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
    else
        set guifont=Consolas:h12
    endif
endif

nnoremap ; :

nnoremap j gj
nnoremap k gk

nnoremap / /\v
vnoremap / /\v

nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

cmap w!! w !sudo tee % >/dev/null

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

nmap <Space> <PageDown>

imap <C-Space> <C-X><C-O>

vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set pastetoggle=<F2>

map <F3> :bp<cr>
vmap <F3> <esc>:bp<cr>i
imap <F3> <esc>:bp<cr>i

map <F4> :bn<cr>
vmap <F4> <esc>:bn<cr>i
imap <F4> <esc>:bn<cr>i

nnoremap <silent> <F5> :YRShow<cr>
inoremap <silent> <F5> <ESC>:YRShow<cr>

map! <F10> <esc>:bd<cr>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"
