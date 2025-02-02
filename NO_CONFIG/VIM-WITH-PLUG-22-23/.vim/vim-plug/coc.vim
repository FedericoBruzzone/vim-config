" Coc for java doesn't work
" RUN rm -rf ~/.config/coc/extensions/coc-java-data/*

" For coc-clangd
"ADD THIS to coc-settings.json
""languageserver": {
"    "ccls": {
"      "command": "ccls",
"      "args": ["--log-file=/tmp/ccls.log", "-v=1"],
"      "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"],
"      "rootPatterns": [".ccls", "compile_commands.json"],
"      "initializationOptions": { 
"         "cache": {
"           "directory": "/tmp/ccls"
"         },
"         "client": {
"          "snippetSupport": true
"         }
"       }
"    }
"  },
" sudo apt-get install ccls
" sudo apt-get install bear
" bear -- make


" autocmd BufNew,BufEnter *.java,*.aj,*.scala execute "silent! CocEnable"
" autocmd BufLeave *.java,*.aj,*.scala execute "silent! CocDisable"

let g:coc_global_extensions = [ 
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-java',
  \ 'coc-metals', 
  \ 'coc-vimtex',
  \ 'coc-protobuf',
  \ 'coc-clangd',
  \ 'coc-pyright',
  \ ]

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[d` and `]d` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" " Mappings for CoCList
" Show all diagnostics
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
""Manage extensions
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" My
autocmd FileType c setl omnifunc=coc#on_coc_completion
autocmd FileType h setl omnifunc=coc#on_coc_completion

" autocmd FileType ocaml setl omnifunc=coc#on_coc_completion
" set omnifunc=syntaxcomplete#Complete
" let g:syntastic_ocaml_checkers = ['merlin']

" let g:opamshare = substitute(system('opam var share'),'\n$','','''')
" execute "set rtp+=" . g:opamshare . "/merlin/vim"
" set rtp^="/home/fcb/.opam/4.14.0/share/ocp-indent/vim

" let coc_user_config = {}
" let g:coc_user_config['coc.preferences.jumpCommand'] = 'split' | 'vsplit' | 'tabe' | 'tab drop'
"pyright.inlayHints.functionReturnTypes": false,
"pyright.inlayHints.parameterNames": false,
