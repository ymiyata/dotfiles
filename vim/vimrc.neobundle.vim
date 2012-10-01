"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neo Bundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=$VIMDIR/bundle/neobundle.vim/
    call neobundle#rc(expand($VIMDIR."/bundle"))
endif

NeoBundle 'https://github.com/mileszs/ack.vim'
NeoBundle 'https://github.com/Rip-Rip/clang_complete'
NeoBundle 'https://github.com/Shougo/neobundle.vim'
NeoBundle 'https://github.com/Shougo/neocomplcache'
NeoBundle 'https://github.com/Shougo/neocomplcache-clang_complete'
if !g:is_windows
    " Only install vimproc and vimshell for Unix
    NeoBundle 'https://github.com/Shougo/vimproc', {
                \ 'build' : {
                \   'cygwin': 'make -f make_cygwin.mak',
                \   'mac': 'make -f make_mac.mak',
                \   'unix': 'make -f make_unix.mak',
                \   },
                \ }
    NeoBundle 'https://github.com/Shougo/vimshell'
endif
NeoBundle 'https://github.com/Shougo/vimfiler',
            \ {'depends': 'Shougo/unite.vim'}
NeoBundle 'https://github.com/Shougo/unite.vim'
NeoBundle 'https://github.com/Shougo/vim-vcs',
            \ {'depends': 'thinca/vim-openbuf'}
NeoBundle 'https://github.com/thinca/vim-quickrun'
NeoBundle 'https://github.com/tpope/vim-surround'
NeoBundle 'https://github.com/tyru/vim-altercmd'
NeoBundle 'https://github.com/ujihisa/vimshell-ssh'

" Unite sources
NeoBundle 'https://github.com/Shougo/unite-build'
NeoBundle 'https://github.com/Shougo/unite-help'
NeoBundle 'https://github.com/Shougo/unite-outline'
NeoBundle 'https://github.com/Shougo/unite-ssh'
NeoBundle 'https://github.com/thinca/vim-unite-history'
NeoBundle 'https://github.com/tsukkee/unite-tag'
NeoBundle 'https://github.com/ujihisa/unite-colorscheme'
NeoBundle 'https://github.com/ujihisa/unite-font'
NeoBundle 'https://github.com/ujihisa/unite-locate.git'

" framework support
NeoBundle 'https://github.com/Shadowfiend/liftweb-vim'

" language support
NeoBundle 'https://github.com/kchmck/vim-coffee-script.git'
NeoBundle 'https://github.com/derekwyatt/vim-scala.git'

" colorschemes
NeoBundle 'https://github.com/altercation/vim-colors-solarized.git'

filetype plugin indent on 
