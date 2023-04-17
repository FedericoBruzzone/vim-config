" To run this you have to install plugin manager from https://github.com/junegunn/vim-plug.git

call plug#begin('~/.vim/plugged')
    Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Color font Retro Scheme
    Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
    Plug 'https://github.com/vim-airline/vim-airline' " Status bar
    Plug 'https://github.com/vim-airline/vim-airline-themes' " Status bar themes
    Plug 'https://github.com/junegunn/goyo.vim' " Goyo for distraction free writing

    Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
    Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
    Plug 'https://github.com/preservim/nerdtree' " Nerd Tree  
    Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'https://github.com/junegunn/fzf.vim' " File manager
    Plug 'https://github.com/voldikss/vim-floaterm' "terminal 
    Plug 'https://github.com/airblade/vim-gitgutter' " git integration 
    Plug 'https://github.com/tpope/vim-fugitive' " git integration 2
    Plug 'sillybun/vim-repl'

    Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw) or yss)
    Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
    Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
    Plug 'https://github.com/godlygeek/tabular' " Tabularize 

    Plug 'https://github.com/lervag/vimtex' " latex plug in => update to latex-suite
    Plug 'https://github.com/instant-markdown/vim-instant-markdown'
    Plug 'https://github.com/untitled-ai/jupyter_ascending.vim'
    
    " Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal  
    " Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
    " Plug 'github/copilot.vim'
    " Plug 'https://github.com/sheerun/vim-polyglot'
call plug#end()

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
