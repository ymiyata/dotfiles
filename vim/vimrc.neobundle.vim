"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neo Bundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=$VIMDIR/bundle/neobundle.vim/
    call neobundle#rc(expand($VIMDIR."/bundle"))
endif

NeoBundle 'https://github.com/Shougo/neobundle.vim'
if MySys() == "unix"
    " Only install vimproc and vimshell for Unix
    NeoBundle 'https://github.com/Shougo/vimproc'
    NeoBundle 'https://github.com/Shougo/vimshell'
endif
NeoBundle 'https://github.com/Shougo/unite.vim'
NeoBundle 'https://github.com/Shougo/neocomplcache'
NeoBundle 'https://github.com/Shougo/neocomplcache-clang_complete'
NeoBundle 'https://github.com/Rip-Rip/clang_complete'
NeoBundle 'https://github.com/thinca/vim-quickrun'
NeoBundle 'https://github.com/mileszs/ack.vim'
NeoBundle 'https://github.com/tpope/vim-surround'

" framework support
NeoBundle 'https://github.com/Shadowfiend/liftweb-vim'

" language support
NeoBundle 'https://github.com/kchmck/vim-coffee-script.git'
NeoBundle 'https://github.com/derekwyatt/vim-scala.git'

" colorschemes
NeoBundle 'https://github.com/altercation/vim-colors-solarized.git'

filetype plugin indent on 


