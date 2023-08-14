let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

" set number
set number

" set relativenumber
set relativenumber

" set autoindent
set autoindent

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set softtabstop=4

" Mouse settings
set mouse=a
set go+=a

" Encoding settings
set encoding=utf-8

" Show tabline
set showtabline=2

" Show statusline
set laststatus=2

" Backspace
set backspace=indent,eol,start

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
" nnoremap <space> za

" Split window below and to the right.
set splitbelow
set splitright

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
" set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

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

" Set not read only 
set noro

" Some servers coc have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Set guifont
set guifont=PragmataProMonoLiga\ Nerd\ Font

" ================================ Additional Settings ================================
" set clipboard^=unnamedplus
" set clipboard^=unnamed

" ===== REMAP =====
" Remap <leader> to space
let g:mapleader = "\<Space>"

" Set C-c to exit insert mode
inoremap <C-c> <Esc>

" Set <leader>pv to Ex
nnoremap <leader>pv :Ex<CR>

" It will delete the selected text and paste the deleted text above the current line.
xnoremap <leader>p "_dP

" Copy to clipboard
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
vnoremap <leader>y "+y
vnoremap <leader>Y "+Y

" Move line/lines
" vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
" vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z
" nmap <S-j> mz:m+<cr>`z
" nmap <S-k> mz:m-2<cr>`z
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv
" inoremap <S-j> <Esc>:m .+1<CR>==gi
" inoremap <S-k> <Esc>:m .-2<CR>==gi

" Search pattern and replace
nnoremap <leader>s :%s/\<<C-r>=expand('<cword>')<CR>\>//gI<Left><Left><Left>

" Map Ctrl-Backspace to delete the previous word in insert mode.
inoremap <C-BS> <C-u>
inoremap <C-h> <C-w>

" C-j and C-k skips a paragraph and word
nnoremap <C-j> }
nnoremap <C-k> {
vnoremap <C-j> }
vnoremap <C-k> {
inoremap <C-j> <C-\><C-n>}a
inoremap <C-k> <C-\><C-n>{a

"let C-l and C-h skips a word
nnoremap <C-l> e
nnoremap <C-h> b
vnoremap <C-l> e 
vnoremap <C-h> b

" CTRL-left/right skips a word
nnoremap <C-Right> e
nnoremap <C-Left> b
vnoremap <C-Right> e
vnoremap <C-Left> b

" CTRL-down/oup skips a paragraph and word
nnoremap <C-UP> {
nnoremap <C-DOWN> }
vnoremap <C-UP> {
vnoremap <C-DOWN> }
inoremap <C-DOWN> <C-\><C-n>}a
inoremap <C-UP> <C-\><C-n>{a

" Set color column
" nnoremap <Leader>sc :highlight ColorColumn ctermbg=red guibg=red<cr>:set colorcolumn=80 <cr> 
nnoremap <leader>sc :set colorcolumn+=80<cr>
nnoremap <leader>nsc :set colorcolumn-=80<cr>

" Make this file exetuable
nnoremap <leader>xx :!chmod +x %<CR>

nnoremap <ESC>u :nohlsearch<CR>

set! conceallevel=0

" Open terminal in a new windows
" map t :tabnew<esc>:terminal ++curwin<cr>
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
" nnoremap <C-UP> <c-w>+
" nnoremap <C-DOWN> <c-w>-
" nnoremap <S-LEFT> <c-w><
" nnoremap <S-RIGHT> <c-w>>

" map <leader>n :bnext<cr>
" map <leader>p :bprevious<cr>
" map <leader>d :bdelete<cr>

" function! QuitOrDeleteBuffer()
"   if !(bufnr('$') == bufnr(''))
"     quit
"   else
"     bd
"   endif
" endfunction

" command Q :call QuitOrDeleteBuffer()
