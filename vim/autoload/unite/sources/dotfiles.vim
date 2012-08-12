let s:save_cpo = &cpo
set cpo&vim

let s:unite_source = {
      \ 'name': 'dotfiles',
      \ 'is_volatile': 1,
      \ }

function! s:unite_source.gather_candidates(args, context)
    return map(unite#sources#dotfiles#get_dotfiles(), '{
                \ "word": v:val,
                \ "source": "dotfiles",
                \ "kind": "file",
                \ "action__path": v:val,
                \ }')
endfunction

function! unite#sources#dotfiles#get_dotfiles()
    let home_dotfiles = split(globpath('~', '.[a-zA-Z0-9]*'), '\n')
    return home_dotfiles + (exists("g:unite_source_dotfiles") ? g:unite_source_dotfiles : [])
endfunction

function! unite#sources#dotfiles#define()
    return s:unite_source
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
