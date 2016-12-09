:map <f7> :tabp<CR>
:map <f8> :tabn<CR>
:map <f9> :make<CR>

:set smartindent
:set tabstop=4
:set shiftwidth=4
:set expandtab

" Change paste: replace with the content of the black hole register _
nmap <silent> cp "_cw<C-R>"<Esc>

" Replace under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" nmap <silent> cp :set opfunc=ChangePaste<CR>g@
" function! ChangePaste(type, ...)
"     silent exe "normal! `[v`]\"_c"
"     silent exe "normal! p"
" endfunction

" --- Code refactoring ---
" For local replace
" nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>
" For global replace
" nnoremap gR gD:%s/<C-R>///gc<left><left><left>
