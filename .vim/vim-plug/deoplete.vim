let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})
call deoplete#custom#source('_', 'max_menu_width', 80)

" inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
