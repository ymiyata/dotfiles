"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => OS Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if g:is_windows
    set noswapfile
    set nobackup
    " Turn IME off
    set iminsert=0
    set imsearch=0
    " Set windows shell to cmd.exe
    set shell=cmd.exe
    set shellcmdflag=/C
else
    set noswapfile
    set nobackup
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
set formatoptions-=ro

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
if has('gui_running')
    if g:is_windows
        set guifont=Consolas:h10
    endif
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
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Commands 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ToggleOption(option_name)
    execute 'setlocal' a:option_name.'!'
    execute 'setlocal' a:option_name.'?'
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Window navigation 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <S-h> :wincmd h<CR>
noremap <silent> <S-j> :wincmd j<CR>
noremap <silent> <S-k> :wincmd k<CR>
noremap <silent> <S-l> :wincmd l<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tab navigation 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <TAB> :<C-u>tabnext<CR>
nnoremap <silent> <S-TAB> :<C-u>tabprevious<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other keyboard mapping 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jj <Esc>
cnoremap qq q!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Space Mapping and Toggles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Space> [Space]
xmap <Space> [Space]
nnoremap [Space] <Nop>
xnoremap [Space] <Nop>

nnoremap <silent> [Space]t :<C-u>tabnew<CR>
nnoremap <silent> [Space]. :<C-u>call ToggleOption('relativenumber')<CR>
nnoremap <silent> [Space]p :<C-u>call ToggleOption('paste')<CR>
nnoremap <silent> [Space]w :<C-u>call ToggleOption('wrap')<CR>

