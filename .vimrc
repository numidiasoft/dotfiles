" dulanov's (http://dulanov.name) Vim Config
set nocompatible
set hidden
set showmode
set tabstop=4
set history=1000

set bs=2
set expandtab
set autoindent
set smartindent

filetype on
filetype plugin on
filetype indent on

if !exists("syntax_on")
    syntax on
endif

set nowrap
set backspace=indent,eol,start

set showmatch

set novisualbell
set vb t_vb=

set ruler
set showcmd
set ttyfast
set wildmenu
set lazyredraw

set backup
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/tmp

set nohls
set incsearch

set virtualedit=all

set background=dark
colorscheme ir_black

if has("gui_running")
    set guioptions-=r
    set guioptions-=T
    set guioptions-=m
    set cursorline
    set lines=31
    set columns=113
    if has("gui_gtk2")
        set guifont=ProggyCleanTT\ 12
    elseif has("X11")
        set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
    else
        set gfn=Inconsolata:h13
        set guifont=Inconsolata:h13
    endif
endif

let mapleader=","
let maplocalleader=","

let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = "/usr/bin/ng"

nmap <Space> <PageDown>

imap <C-Space> <C-X><C-O>

vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

map! <F3> <esc>:copen<cr>

map! <F5> <esc>:BufExplorer<cr>

map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

map! <F8> <esc>:MarksBrowser<cr>

map! <F10> <esc>:bd<cr>

map! <F11> <esc>:TlistToggle<cr>

map! <F12> <esc>:bn<cr>

nmap <C-N>v :NERDTree<cr>
vmap <C-N>v <esc>:NERDTree<cr>i
imap <C-N>v <esc>:NERDTree<cr>i

nmap <C-N>x :NERDTreeClose<cr>
vmap <C-N>x <esc>:NERDTreeClose<cr>i
imap <C-N>x <esc>:NERDTreeClose<cr>i
