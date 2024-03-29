scriptencoding utf-8
set encoding=utf-8

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
Plugin 'brookhong/cscope.vim'
Plugin 'romainl/vim-qf'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-syntastic/syntastic'
Plugin 'vivien/vim-linux-coding-style'
Plugin 'scrooloose/nerdcommenter'
Plugin 'junegunn/vim-easy-align'
Plugin 'justinmk/vim-sneak'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'whiteinge/diffconflicts'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ==== Text editor general configuration ====

" Speedup start time avoiding connection to X11 server
set clipboard=exclude:.*

" Set color
set t_Co=256

" Set theme to Solarized Dark
syntax enable
set background=dark
colorscheme solarized


" Default indentation (see also editorconfig)
:set smartindent
:set tabstop=4
:set shiftwidth=4
" Align new line to the open (
:set cino=(0
" :set expandtab

":au BufRead,BufNewFile *.py set expandtab
":au BufRead,BufNewFile *.py set tabstop=2
":au BufRead,BufNewFile *.py set softtabstop=2
":au BufRead,BufNewFile *.py set shiftwidth=2
":au BufRead,BufNewFile *.py set autoindent


" Highlight text that exceedes after 80 columns
:au BufWinEnter *.c,*.h let w:m1=matchadd('Search', '\%<81v.\%>79v', -1)
:au BufWinEnter *.c,*.h let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Change default search color
:hi Search cterm=NONE ctermfg=grey ctermbg=blue

" Change paste: replace with the content of the black hole register _
nmap <silent> cp "_cw<C-R>"<Esc>

" Replace under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" Preserve undo after switching tab
" Persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000


" ==== Confortable scrolling ====
" Remove default mappings and enable only up and down
let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>

" ==== Easy Align ====
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


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
:map <f6> :TagbarToggle<CR>
:map <f7> :bp<CR>
:map <f8> :bn<CR>
:map <C-n> :bp<CR>
:map <C-m> :bn<CR>
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

nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

let g:qf_mapping_ack_style = 1

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
