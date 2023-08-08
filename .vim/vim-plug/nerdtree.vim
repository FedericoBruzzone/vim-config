" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree 
nnoremap <F3> :NERDTreeToggle<cr> "%<cr>

" command! -nargs=* -complete=dir T execute 'NERDTreeToggle ' . expand('<args>') . '| wincmd p | NERDTreeFind'

nnoremap <C-t> :NERDTreeToggle<cr> "%<cr>
nnoremap <C-a> :NERDTreeFind<cr> "%<cr>












" function! IsNERDTreeOpen()
"   return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction

" function! SyncTree()
"   if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"     NERDTreeFind
"     wincmd p
"   endif
" endfunction
