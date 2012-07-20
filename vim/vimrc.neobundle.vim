"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neo Bundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=$VIMDIR/bundle/neobundle.vim/
    call neobundle#rc(expand($VIMDIR."/bundle"))
endif

NeoBundle 'https://github.com/Shougo/neobundle.vim.git'
if MySys() == "unix"
    " Only install vimproc and vimshell for Unix
    NeoBundle 'https://github.com/Shougo/vimproc.git'
    NeoBundle 'https://github.com/Shougo/vimshell.git'
endif
NeoBundle 'https://github.com/Shougo/unite.vim.git'
NeoBundle 'https://github.com/Shougo/neocomplcache.git'
NeoBundle 'https://github.com/Shougo/neocomplcache-clang_complete.git'
NeoBundle 'https://github.com/Rip-Rip/clang_complete.git'
NeoBundle 'https://github.com/thinca/vim-quickrun.git'
NeoBundle 'https://github.com/kchmck/vim-coffee-script.git'
NeoBundle 'https://github.com/derekwyatt/vim-scala.git'
NeoBundle 'https://github.com/mileszs/ack.vim'
NeoBundle 'https://github.com/tpope/vim-surround.git'

filetype plugin indent on 


