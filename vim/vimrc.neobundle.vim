"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neo Bundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=$VIMDIR/bundle/neobundle.vim/
    call neobundle#rc(expand($VIMDIR."/bundle"))
endif

NeoBundle 'Shougo/neobundle.vim'
if MySys() == "unix"
    " Only install vimproc and vimshell for Unix
    NeoBundle 'Shougo/vimproc'
    NeoBundle 'Shougo/vimshell'
endif
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomplcache-clang_complete'
NeoBundle 'Rip-Rip/clang_complete'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'kchmck/vim-coffee-script'

filetype plugin indent on 


