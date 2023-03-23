" Ctrl-p to search: 
" nremap <C-p> :Files<Cr> 

" F2 to search: 
nnoremap <F2> :Files<Cr>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}""
"let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
let g:fzf_action = { 'enter': 'tab split' }
