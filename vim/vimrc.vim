"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => OS Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if g:is_windows
    set swapfile
    set directory=$HOME\vimswap
    set backup
    set backupdir=$HOME\vimbackup
    " Turn IME off
    set iminsert=0
    set imsearch=0
    " Set windows shell to cmd.exe
    set shell=cmd.exe
    set shellcmdflag=/C
else
    set swapfile
    set directory=~/.vimswap
    set backup
    set backupdir=~/.vimbackup
    " Set unix shell to zsh
    set shell=/bin/zsh
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if v:version >= 703
    set relativenumber
endif

set encoding=utf-8
set modelines=0
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set history=1000
set cpoptions+=J
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set lazyredraw
set matchtime=3
set showbreak=↪
set splitbelow
set splitright
set fillchars=diff:⣿
set ttimeout
set notimeout
set nottimeout
set autowrite
set shiftround
set autoread
set title

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
if has('gui_running')
    set guifont=Consolas:h10,Lucida_Console:h10:w5
    set t_Co=256
    set background=dark
    colorscheme solarized
else
    set t_Co=256
    set background=dark
    colorscheme solarized
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Window navigation 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <S-h> :wincmd h<CR>
noremap <silent> <S-j> :wincmd j<CR>
noremap <silent> <S-k> :wincmd k<CR>
noremap <silent> <S-l> :wincmd l<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other keyboard mapping 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jj <Esc>
cnoremap qq q!
