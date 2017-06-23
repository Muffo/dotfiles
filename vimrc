" ==== Vundle setup ====
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-syntastic/syntastic'
Plugin 'vivien/vim-linux-coding-style'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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
:au BufWinEnter *.c,*.h let w:m1=matchadd('Search', '\%<81v.\%>79v', -1)
:au BufWinEnter *.c,*.h let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Change default search color
:hi Search cterm=NONE ctermfg=grey ctermbg=blue

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

" Use faster matcher
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

:nnoremap <Leader>] :CtrlPTag<cr>

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


"======= Fix buffers switching ======
" Save current view settings on a per-window, per-buffer basis.
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

" Restore current view settings.
function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction

" When switching buffers, preserve window view.
if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif


" ===== Syntastic =====

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_checkers = ['make', 'cppcheck']

" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
