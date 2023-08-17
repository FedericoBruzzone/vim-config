" Ctrl-p to search: 
" nremap <C-p> :Files<Cr> 

" F2 to search: 
nnoremap <F2> :Files<Cr>

let $FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}' 
            \ --color=fg:#908caa,bg:#191724,hl:#ebbcba
            \ --color=fg:#908caa,bg:#191724,hl:#ebbcba 
            \ --color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba 
            \ --color=border:#403d52,header:#31748f,gutter:#191724 
            \ --color=spinner:#f6c177,info:#9ccfd8,separator:#403d52
            \ --color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"


let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
"let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
" let g:fzf_action = { 'enter': 'tab split' }

" command! -bang -nargs=? -complete=dir F call fzf#vim#files(<q-args>, fzf#vim#with_preview({'dir': expand('%:p:h')}))

nnoremap <leader>f :Files<Cr>
nnoremap <leader>g :GFiles<Cr>
nnoremap <leader>b :Buffers<Cr>
nnoremap <leader>w :Windows<Cr>
nnoremap <leader>s :Lines<Cr>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Define a function to find the project root
function! FindProjectRoot()
    let current_dir = expand('%:p:h')
    let root_dir = finddir('.git', current_dir.';')
    return root_dir != '' ? root_dir : current_dir
endfunction

" Set the initial directory for fzf.vim to the project root
let g:fzf_initial_directory = FindProjectRoot()
