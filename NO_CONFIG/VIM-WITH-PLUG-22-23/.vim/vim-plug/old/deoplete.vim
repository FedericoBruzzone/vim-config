let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})
call deoplete#custom#source('_', 'max_menu_width', 80)

" inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" FOR CLANG
" let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-14/lib/libclang.so.1'
" let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-14/lib/clang/14.0.0/include'
" let g:deoplete#sources#clang#std = {'c': 'c11', 'cpp': 'c++1z', 'objc': 'c11', 'objcpp': 'c++1z'}

" FOR CLANG2
let g:deoplete#sources#clang#std = {
\    'c': 'c14',
\ }
" \    'cpp': 'c++1z',
" \    'objc': 'c11',
" \    'objcpp': 'c++1z',
