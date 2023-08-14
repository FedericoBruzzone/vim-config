" Map the F5 key to toggle FloatTerm
" nnoremap   <silent>   <F5>    :FloatermNew<CR>
nnoremap   <silent>   <F5>    :FloatermNew! cd %:p:h<CR>
tnoremap   <silent>   <F5>    <C-\><C-n>:FloatermKill<CR>
nnoremap   <silent>   <F6>    :FloatermToggle<CR>
tnoremap   <silent>   <F6>    <C-\><C-n>:FloatermToggle<CR>

" nnoremap   <silent>   <F7>    :FloatermNew<CR>
" tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
" nnoremap   <silent>   <F8>    :FloatermPrev<CR>
" tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
" nnoremap   <silent>   <F9>    :FloatermNext<CR>
" tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
" nnoremap   <silent>   <F12>   :FloatermToggle<CR>
" tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
" nnoremap   <silent>   <F12>   :FloatermKill<CR>
" tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermKill<CR>

" :let g:floaterm_width=0.6
" :let g:floaterm_height=0.6

