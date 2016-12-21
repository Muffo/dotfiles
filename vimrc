execute pathogen#infect()

" ==== Text editor general configuration ====

" Set color
set t_Co=256

" Set theme to Solarized Dark
syntax enable
set background=dark
colorscheme solarized


" Default indentation
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set expandtab


" Highlight text that exceedes after 80 columns
:au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>79v', -1)
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Change paste: replace with the content of the black hole register _
nmap <silent> cp "_cw<C-R>"<Esc>

" Replace under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>


" ==== Nerd tree and taglist =====

" Close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Adjust the default width of taglist window
:let Tlist_WinWidth = 60
let Tlist_Use_Right_Window = 1


" ==== Nerd tree and taglist =====

" Set same separator char as Tmux
set fillchars+=vert:│
highlight VertSplit cterm=NONE ctermfg=NONE ctermbg=NONE

" " Navigation between split windows using ctrl + hjkl
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>


" ==== Function keys and toggles ====
:map <f5> :NERDTreeToggle<CR>
:map <f6> :TlistToggle<CR>

:map <f7> :bp<CR>
:map <f8> :bn<CR>
":map <f9> :make<CR>
:map <F10> :!./%<CR>
:map <F11> :!ctags -R *<CR>

" No longer use tabs
" :map <f7> :tabp<CR>
" :map <f8> :tabn<CR>


" Linediff commands
" http://www.vim.org/scripts/script.php?script_id=3745
:noremap <Leader>dt :Linediff<CR>
:noremap <Leader>do :LinediffReset<CR>

" Set ignored file for ctrlp
"
" I need .git for Fugitive!
" :set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
" :set wildignore+=*/.hg/*,*/.svn/*
" :set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.a,*.ko
:set wildignore=

" ==== Air-line configuration ====
:set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep=' '
let g:airline_left_alt_sep=' '
let g:airline_right_sep=' '
let g:airline_right_alt_sep=' '
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" let g:airline_powerline_fonts = 1


" ===== Cscope =====

nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

let g:cscope_silent = 1


" ====== Stuff that I used in the past ======
"
" Open a NERDTree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" The following would be great, but they don't work :(
" let g:miniBufExplModSelTarget = 1
" let g:miniBufExplorerMoreThanOne = 0
" let g:miniBufExplModSelTarget = 0
" let g:miniBufExplUseSingleClick = 1
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
" let g:miniBufExplModSelTarget = 1

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



