let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set clipboard^=unnamedplus
set clipboard^=unnamed
" set guicursor=
" :set paste


" nnoremap <Leader>ncc :highlight MyColorColumn ctermbg=red guibg=red<CR>:highlight link ColorColumn MyColorColumn<CR>:set colorcolumn-=80<CR>
highlight ColorColumn ctermbg=red guibg=red
nnoremap <Leader>cc :highlight ColorColumn ctermbg=red guibg=red<cr>:set colorcolumn=80 <cr> 
nnoremap <Leader>ncc :set colorcolumn-=80<cr> 

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
\ if v:insertmode == 'i' | 
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

"set statusline=%t 
" set statusline=0 
" set guitablabel=0

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab
:set softtabstop=4

:set mouse=a
:set go+=a

:set encoding=utf-8

:set showtabline=2
:set laststatus=2

""""""""""""""""""""

:set backspace=indent,eol,start

:set splitbelow
:set splitright

"split navigations
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>


" Enable folding
:set foldmethod=indent
:set foldlevel=99
" Enable folding with the spacebar
" nnoremap <space> za

""""""""""""""""""""

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Do not save backup files.
set nobackup

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap
" set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
"set showmode
set noshowmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

set timeoutlen=500

set ttimeoutlen=0

" Open terminal in a new windows
map t :tabnew<esc>:terminal ++curwin<cr>



" inoremap jj <esc>
" nnoremap <space> :

" Move line/lines
nmap <C-j> mz:m+<cr>`z
nmap <C-k> mz:m-2<cr>`z
vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Map Ctrl-Backspace to delete the previous word in insert mode.
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
"nnoremap <C-UP> <c-w>+
"nnoremap <C-DOWN> <c-w>-
nnoremap <S-LEFT> <c-w><
nnoremap <S-RIGHT> <c-w>>

" CTRL-down/up skips a paragraph and word
:nmap <C-UP> {
:nmap <C-DOWN> }
":nmap <C-RIGHT> :normal! w<CR>
":nmap <C-LEFT> :normal! b<CR>

" :imap <C-DOWN> <Esc>}
" :imap <C-UP> <Esc>{
:imap <C-DOWN> <C-\><C-n>}a
:imap <C-UP> <C-\><C-n>{a

:vmap <C-UP> {
:vmap <C-DOWN> }

" nnoremap <silent> p :set paste<CR>"0p:set nopaste<CR>


" from insert to normal mode cursor in the same position
" :set virtualedit=onemore
" :inoremap <Esc> <Esc>`^

noremap <C-Right> e
" inoremap <C-Right> <Esc>e
" inoremap <C-Right> <Esc>ea
" inoremap <C-Right> <C-\><C-n>ea
vnoremap <C-Right> e

" autocmd TextChanged,TextChangedI * silent write

function! QuitOrDeleteBuffer()
  if !(bufnr('$') == bufnr(''))
    quit
  else
    bd
  endif
endfunction

command Q :call QuitOrDeleteBuffer()

" inoremap <leader>w <esc>:w<CR>
" inoremap <leader>q <esc>:call QuitOrDeleteBuffer()<CR>
" map <leader>w :w<CR>
" " nnoremap <leader>w :w<CR>
" nnoremap <leader>q :call QuitOrDeleteBuffer()<CR>

" :set conceallevel=0 "2
set! conceallevel=0
set wrap
