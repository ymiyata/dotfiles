"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

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
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

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
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clang Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_complete_auto = 1

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

nnoremap <Space>x :QuickRun cpp-quickrun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Space>ub :<C-u>Unite buffer<CR>
nnoremap <Space>uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <Space>ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <Space>um :<C-u>Unite file_mru<CR>
nnoremap <Space>uu :<C-u>Unite buffer file_mru<CR>
nnoremap <Space>ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

" Split window
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-L> unite#do_action('vsplit')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-L> unite#do_action('vsplit')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimShell 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if MySys() == "unix"
    nmap <Space>v <Plug>(vimshell_split_switch)
    let g:vimshell_prompt = " vsh > "
    let g:vimshell_user_prompt = 'getcwd()'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim CoffeeScript 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!
