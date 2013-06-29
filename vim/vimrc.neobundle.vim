"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neo Bundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=$VIMDIR/bundle/neobundle.vim/
    call neobundle#rc(expand($VIMDIR."/bundle"))
endif

NeoBundle 'honza/snipmate-snippets'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'Rip-Rip/clang_complete'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'Shougo/neocomplcache-clang_complete'
if !g:is_windows
    " Only install vimproc and vimshell for Unix
    NeoBundle 'Shougo/vimproc', {
                \ 'build' : {
                \   'cygwin': 'make -f make_cygwin.mak',
                \   'mac': 'make -f make_mac.mak',
                \   'unix': 'make -f make_unix.mak',
                \   },
                \ }
    NeoBundle 'Shougo/vimshell'
endif
NeoBundle 'Shougo/vimfiler',
            \ {'depends': 'Shougo/unite.vim'}
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vim-vcs',
            \ {'depends': 'thinca/vim-openbuf'}
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tyru/vim-altercmd'
NeoBundle 'ujihisa/vimshell-ssh'
NeoBundle 'vim-script/taglist.vim'

" Unite sources
NeoBundle 'Shougo/unite-build'
NeoBundle 'Shougo/unite-help'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/unite-ssh'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'ujihisa/unite-font'
NeoBundle 'ujihisa/unite-locate.git'

" framework support
NeoBundle 'Shadowfiend/liftweb-vim'

" language support
NeoBundle 'kchmck/vim-coffee-script.git'
NeoBundle 'derekwyatt/vim-scala.git'


" colorschemes
NeoBundle 'altercation/vim-colors-solarized.git'

filetype plugin indent on 
