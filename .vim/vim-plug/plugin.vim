" To run this you have to install plugin manager from https://github.com/junegunn/vim-plug.git

call plug#begin('~/.vim/plugged')
    " Used with vim-notes
    Plug 'https://github.com/xolox/vim-misc'
    Plug 'https://github.com/xolox/vim-notes'

    Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Color font Retro Scheme
    Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
    Plug 'https://github.com/vim-airline/vim-airline' " Status bar
    Plug 'https://github.com/vim-airline/vim-airline-themes' " Status bar themes
    " Plug 'https://github.com/psliwka/vim-smoothie' " Smooth scroll down
    Plug 'https://github.com/junegunn/goyo.vim' " Goyo for distraction free writing
    Plug 'https://github.com/chrisbra/csv.vim' " csv files 
    Plug 'https://github.com/frazrepo/vim-rainbow' " color brackets
    Plug 'https://github.com/Yggdroot/indentLine' " show indentation

    " Plug 'https://github.com/dense-analysis/ale' " Error handler and linting
    " Plug 'https://github.com/Shougo/deoplete.nvim' " Auto completition 
    " Plug 'https://github.com/roxma/nvim-yarp' " Used by deoplete
    " Plug 'https://github.com/roxma/vim-hug-neovim-rpc' " Used by deoplete
    " Plug 'https://github.com/deoplete-plugins/deoplete-jedi' " deoplete for python
    " Plug 'https://github.com/tweekmonster/deoplete-clang2' " deoplete for clang 

    Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion for java and scala
    Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
    Plug 'https://github.com/preservim/nerdtree' " Nerd Tree  
    Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'https://github.com/junegunn/fzf.vim' " File manager
    Plug 'https://github.com/voldikss/vim-floaterm' "terminal 
    Plug 'https://github.com/airblade/vim-gitgutter' " git integration 
    Plug 'https://github.com/tpope/vim-fugitive' " git integration 2
    Plug 'https://github.com/sillybun/vim-repl' " vim repl

    " Plug 'https://github.com/sk1418/HowMuch' " Turns vim into a calculator
    Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw) or yss)
    Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
    "Deprecated Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
    Plug 'https://github.com/mg979/vim-visual-multi'
    Plug 'https://github.com/godlygeek/tabular' " Tabularize 
    " Plug 'https://github.com/rhysd/vim-grammarous' " grammar checker

    Plug 'https://github.com/lervag/vimtex' " latex plug in => update to latex-suite
    Plug 'https://github.com/instant-markdown/vim-instant-markdown' " markdown Preview
    Plug 'https://github.com/untitled-ai/jupyter_ascending.vim' " jupyter preview
    " Plug 'https://github.com/makerj/vim-pdf' " view pdf 
    
    Plug 'github/copilot.vim'
    " Plug 'https://github.com/KabbAmine/zeavim.vim' " Open zeal
    " Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal  
    " Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
    " Plug 'https://github.com/sheerun/vim-polyglot'
    " Plug 'https://github.com/SirVer/ultisnips' " It needs vim with python3 installed 
    " Plug 'https://github.com/liuchengxu/vim-which-key' "  show which key, only for binding
call plug#end()

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
