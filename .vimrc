set cindent
set cinkeys=!^F
set cinoptions=(0t0c1

set novisualbell
set noerrorbells
set vb t_vb=

set ruler
set showcmd
set wildmenu
set lazyredraw
set cursorline

let mapleader=","
let maplocalleader=","

let g:Powerline_symbols = 'fancy'
.vimrc.after
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

au BufRead,BufNewFile *.go set filetype=golang

au FileType erlang set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
au BufNewFile,BufRead rebar.config set filetype=erlang
au FocusLost * :wa

set textwidth=140

if version >= 703
  set relativenumber
  set colorcolumn=80,120
  set undofile
  set undodir=/.vim/_tmp
endif

if has("gui_running")
  set background=light
  colorscheme solarized
else
  colorscheme molokai
endif

if has("gui_running")
    set guioptions-=r
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions+=c
    set cursorline
    set columns=120
    if has("gui_gtk2")
        set guifont=DroidSansMono\ for\ Powerline\ 10
    elseif has("X11")
        set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
    endif
endif

nnoremap ; :

nnoremap j gj
nnoremap k gk

nmap <Space> <PageDown>

imap <C-Space> <C-X><C-O>

vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
