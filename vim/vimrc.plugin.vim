let g:mapleader = ","

nnoremap ; <Nop>
xnoremap ; <Nop>
nnoremap , <Nop>
xnoremap , <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => AlterCommand
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call altercmd#load()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The prefix key
nmap ; [unite]
xmap ; [unite]
nnoremap [unite] <Nop>
xnoremap [unite] <Nop>

AlterCommand <cmdwin> u[nite] Unite

let g:unite_source_history_yank_enable = 1

" Split window
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-L> unite#do_action('vsplit')
autocmd FileType unite inoremap <silent> <buffer> <expr> <C-L> unite#do_action('vsplit')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite sources
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('pt')
    let g:unite_source_grep_command = 'pt'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor'
    let g:unite_source_grep_recursive_opt = ''
    let g:unite_source_grep_encoding = 'utf-8'
elseif executable('ack-grep')
    let g:unite_source_grep_command = 'ack-grep'
    let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
    let g:unite_source_grep_recursive_opt = ''
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> [unite]<Space> :<C-u>Unite -buffer-name=files
            \                                -no-split
            \                                buffer neomru/file<CR>
nnoremap <silent> [unite]b       :<C-u>Unite -buffer-name=buffers
            \                                -quick-match
            \                                buffer<CR>
nnoremap <silent> [unite]c       :<C-u>Unite -buffer-name=changes
            \                                -auto-reviews
            \                                change jump<CR>
nnoremap <silent> [unite]f       :<C-u>UniteWithBufferDir -buffer-name=files
            \                                file_rec/async<CR>
nnoremap <silent> [unite]l       :<C-u>Unite -buffer-name=search
            \                                -start-insert -vertical -direction=belowright
            \                                -auto-preview
            \                                line:all<CR>
nnoremap <silent> [unite]L       :<C-u>UniteWithCursorWord -buffer-name=search
            \                                -start-insert -vertical -direction=belowright
            \                                -auto-preview
            \                                line:all<CR>
nnoremap <silent> [unite]o       :<C-u>Unite -buffer-name=outline
            \                                -vertical -direction=belowright -no-empty
            \                                -auto-preview
            \                                outline<CR>
nnoremap <silent> [unite]s       :<C-u>Unite -buffer-names=sources
            \                                source<CR>
nnoremap <silent> [unite]y       :<C-u>Unite -buffer-name=yanks
            \                                history/yank<CR>
nnoremap <silent> [unite]/       :<C-u>execute 'Unite -buffer-name=search -no-empty grep:'
            \                                  .expand('%:h')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Expand Region
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap v     <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Jedi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python setlocal completeopt-=preview
