let g:mapleader = ","

nnoremap ; <Nop>
xnoremap ; <Nop>
nnoremap , <Nop>
xnoremap , <Nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplcache 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_fuzzy_completion = 1
" add neocomplcache option
let g:neocomplcache_force_overwrite_completefunc = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
" Set auto completion start length
let g:neocomplcache_auto_completion_start_length = 2
" Set auto completion start length
let g:neocomplcache_manual_completion_start_length = 0

" For auto select, and auto delimeter
let g:neocomplcache_enable_auto_select = 0
let g:neocomplcache_enable_auto_delimiter = 1

let g:neocomplcache_force_overwrite_completefunc = 1

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

" Recommended key-mappings.
" <C-n>: neocomplcache
inoremap <expr><C-n>   pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>\<Down>"
" <C-p>: keyword completion
inoremap <expr><C-p>   pumvisible() ? "\<C-p>" : "\<C-p>\<C-n>"
" <TAB>: completion.
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><BS>    neocomplcache#smart_close_popup()."\<C-h>"
" <C-e>: close popup
inoremap <expr><C-e>   pumvisible() ? neocomplcache#cancel_popup() : "\<End>"

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns['ruby'] = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns['php'] = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns['c'] = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns['cpp'] = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NeoSnippet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neosnippet#snippets_directory=$VIMDIR.'/bundle/snipmate-snippets/snippets,'.$VIMDIR.'/snippets'
" Plugin key-mappings.
imap <expr><CR>  pumvisible() ? (neosnippet#expandable() ? neocomplcache#smart_close_popup()."\<C-k>" : neocomplcache#smart_close_popup()) : "\<CR>"
smap <expr><CR>  neosnippet#expandable() ? neocomplcache#smart_close_popup()."\<C-k>" : neocomplcache#smart_close_popup()."\<CR>"
imap <C-k>       <Plug>(neosnippet_expand_or_jump)
smap <C-k>       <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>")
smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

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
\ 'scala': {
\   'type': 'scala',
\   'command': 'scala',
\   'cmdopt': '-nc',
\ },
\}

nnoremap <Leader>x :QuickRun cpp-quickrun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key maps
"
" [unite]d : list dotfiles
" ;a       : (ack) grep for files
" [unite]h : list history
" ;o       : list outline
" ;r       : list register
" [unite]s : list unite sources
" ;t       : list tags

" The prefix key
nnoremap [unite] <Nop>
xnoremap [unite] <Nop>
nmap ;n [unite]
xmap ;n [unite]

AlterCommand <cmdwin> u[nite] Unite
if executable('ack')
    let g:unite_source_grep_command = 'ack'
endif
let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
let g:unite_source_grep_recursive_opt = ''

nnoremap <silent>       ;a        :<C-u>Unite grep -buffer-name=search -auto-preview -no-quit<CR>
nnoremap <silent>       [unite]h  :<C-u>Unite history/command<CR>
nnoremap <silent>       ;f        :<C-u>Unite -buffer-name=register buffer file_mru bookmark file -start-insert<CR>
nnoremap <silent>       ;o        :<C-u>Unite outline -start-insert<CR>
nnoremap <silent>       ;r        :<C-u>Unite -buffer-name=register register history/yank<CR>
nnoremap                [unite]s  :<C-u>Unite source<CR>
nnoremap <silent>       ;t        :<C-u>Unite -buffer-name=tag tag tag/include -start-insert<CR>
nnoremap <silent>       ;c        :<C-u>Unite change jump<CR>
" Add unite bookmark
nnoremap <silent>       [Space]b  :<C-u>UniteBookmarkAdd<CR>

" Split window
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-L> unite#do_action('vsplit')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-L> unite#do_action('vsplit')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite sources
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:unite_source_dotfiles = []
let g:unite_source_dotfiles += split(globpath('$DOTFILES_SHDIR', '*.sh\|*.zsh'), '\n')
let g:unite_source_dotfiles += split(globpath('$DOTFILES_VIMDIR', '*.vim'), '\n')
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
;;
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
