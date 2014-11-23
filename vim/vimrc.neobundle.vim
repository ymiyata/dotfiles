"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neo Bundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=$VIMDIR/bundle/neobundle.vim/
endif

call neobundle#begin(expand($VIMDIR."/bundle"))

NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kristijanhusak/vim-multiple-cursors'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc', {
            \ 'build': {
            \   'cygwin': 'make -f make_cygwin.mak',
            \   'mac': 'make -f make_mac.mak',
            \   'unix': 'make -f make_unix.mak',
            \   },
            \ }
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tyru/vim-altercmd'
NeoBundle 'vim-scripts/Align'

" Unite sources
NeoBundle 'Shougo/unite-help'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'ujihisa/unite-font'
NeoBundle 'ujihisa/unite-locate.git'

" language support
NeoBundle 'derekwyatt/vim-scala.git'

" colorschemes
NeoBundle 'altercation/vim-colors-solarized.git'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
