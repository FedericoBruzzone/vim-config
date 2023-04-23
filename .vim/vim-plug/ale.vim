" In ~/.vim/vimrc, or somewhere similar.
let g:ale_linters = {
\   'json': [],    
\   'java': [],
\   'scala': [],
\   'python': [],
\}
" \   'python': ['bandit', 'cspell', 'flake8', 'flakehell', 
"                 \ 'jedils', 'mypy', 'prospector', 'pycln', 
"                 \ 'pycodestyle', 'pydocstyle', 'pyflakes', 
"                 \ 'pylama', 'pylsp', 'pyre', 'pyright', 
"                 \ 'refurb', 'ruff', 'unimport', 'vulture'],
" 'pylint',  

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:ale_virtualtext_cursor = 'current' " disable

" Chenge error message
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=%{LinterStatus()}

let g:ale_floating_window_border = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
let g:ale_floating_window_border = repeat([''], 8)

