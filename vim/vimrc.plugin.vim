let g:mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplcache 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" add neocomplcache option
let g:neocomplcache_force_overwrite_completefunc = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
" Lock buffer that doesn't work well with neocomplcache
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" For auto select, and auto delimeter
let g:neocomplcache_enable_auto_select = 0
let g:neocomplcache_enable_auto_delimiter = 1

" From https://github.com/Shougo/shougo-s-github/blob/master/vim/.vimrc
if $USER ==# 'root'
    let g:neocomplcache_temporary_dir = '/root/.neocon'
endif

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '[0-9a-zA-Z:#_]\+'

let g:neocomplcache_vim_completefuncs = {
    \ 'Unite': 'unite#complete_source',
    \ 'VimShellExecute': 'vimshell#vimshell_execute_complete',
    \ 'VimShellInteractive': 'vimshell#vimshell_execute_complete',
    \ 'VimShellTerminal': 'vimshell#vimshell_execute_complete',
    \ 'VimShell': 'vimshell#complete',
    \ 'VimFiler': 'vimshell#complete',
    \}

" Plugin key-mappings.
imap <silent><C-l> <Plug>(neosnippet_jump_or_expand)
smap <silent><C-l> <Plug>(neosnippet_jump_or_expand)
imap <silent><C-k> <Plug>(neosnippet_expand_or_jump)
smap <silent><C-k> <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
    set conceallevel=2 concealcursor=i
endif
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>    neocomplcache#smart_close_popup() . "\<CR>"
" <C-n>: neocomplcache
inoremap <expr><C-n>   pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>\<Down>"
" <C-p>: keyword completion
inoremap <expr><C-p>   pumvisible() ? "\<C-p>" : "\<C-p>\<C-n>"
" <TAB>: completion.
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr><C-h>   neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS>    neocomplcache#smart_close_popup()."\<C-h>"
" <C-y>: paste
inoremap <expr><C-y>   pumvisible() ? neocomplcache#close_popup() : "\<C-r>\""
" <C-e>: close popup
inoremap <expr><C-e>   pumvisible() ? neocomplcache#cancel_popup() : "\<End>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NeoSnippet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neosnippet#snippets_directory=$VIMDIR.'/bundle/snipmate-snippets/snippets,'.$VIMDIR.'/snippets'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clang Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=menu,menuone,longest
let g:clang_complete_auto = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => AlterCommand
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call altercmd#load()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => QuickRun 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:quickrun_config = {
\ 'cpp-quickrun': {
\   'type': 'cpp',
\   'command': 'g++',
\   'cmdopt': '-Wall -Wextra',
\ },
\ 'cc-quickrun': {
\   'type': 'c',
\   'command': 'gcc',
\   'cmdopt': '-Wall -Wextra',
\ },
\ 'coffee': {
\   'type': 'coffee',
\   'command': 'coffee',
\   'exec': ['%c -cbp %s'],
\ },
\}

nnoremap <Leader>x :QuickRun cpp-quickrun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key maps
"
" [unite]a: list all
" [unite]b: list buffer
" [unite]c: list file in current directory
" [unite]d: list dotfiles
" [unite]g: grep for files
" [unite]h: list history
" [unite]l: list colorscheme
" [unite]m: list most recently used
" [unite]o: list outline
" [unite]r: list register
" [unite]s: list unite sources
" [unite]t: list tags

" The prefix key
nnoremap [unite] <Nop>
xnoremap [unite] <Nop>
nmap <Leader>n [unite]
xmap <Leader>n [unite]

AlterCommand <cmdwin> u[nite] Unite
if executable('ack')
    let g:unite_source_grep_command = 'ack'
endif
let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
let g:unite_source_grep_recursive_opt = ''

nnoremap <silent>       [unite]a  :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap <silent>       [unite]b  :<C-u>Unite buffer<CR>
nnoremap <silent>       [unite]c  :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent>       [unite]g  :<C-u>Unite -buffer-name=search -no-quit grep<CR>
nnoremap <silent>       [unite]h  :<C-u>Unite history/command<CR>
nnoremap                [unite]l  :<C-u>Unite -auto-preview colorscheme<CR>
nnoremap <silent>       [unite]m  :<C-u>Unite file_mru<CR>
nnoremap <silent>       [unite]o  :<C-u>Unite outline -start-insert<CR>
nnoremap <silent>       [unite]r  :<C-u>Unite -buffer-name=register register<CR>
nnoremap                [unite]s  :<C-u>Unite source<CR>
nnoremap <silent>       [unite]t  :<C-u>Unite -buffer-name=tag tag tag/include<CR>

" Split window
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-L> unite#do_action('vsplit')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-L> unite#do_action('vsplit')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite sources
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:unite_source_dotfiles = []
let g:unite_source_dotfiles += split(globpath($DOTFILES_SHDIR, '*.sh\|*.zsh'), '\n')
let g:unite_source_dotfiles += split(globpath($DOTFILES_VIMDIR, '*.vim'), '\n')
nnoremap <silent> [unite]d :<C-u>Unite dotfiles<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimFiler 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The prefix key
nnoremap [vimfiler] <Nop>
xnoremap [vimfiler] <Nop>
nmap <Leader>f [vimfiler]
xmap <Leader>f [vimfiler]

let g:vimfiler_safe_mode_by_default = 0

nnoremap [vimfiler] :<C-u>VimFilerBufferDir -split -simple -toggle -winwidth=40 -quit<CR>

" Change default key mapping
augroup vimrc
    autocmd FileType vimfiler silent call s:vimfiler_my_settings()
augroup END
function! s:vimfiler_my_settings()
    nmap <buffer> <S-l> :wincmd l<CR>
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimShell 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !g:is_windows
    nmap <Leader>v <Plug>(vimshell_split_switch)
    xmap <Leader>v <Plug>(vimshell_split_switch)
    let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
    let g:vimshell_right_prompt = 'vcs#info("(%s)-[%b]%p", "(%s)-[%b|%a]%p")'
    let g:vimshell_prompt = "» "
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim CoffeeScript 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=tags;$HOME/.vim/tags/

let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
nmap <Leader>t :TlistToggle<CR>
xmap <Leader>t :TlistToggle<CR>
