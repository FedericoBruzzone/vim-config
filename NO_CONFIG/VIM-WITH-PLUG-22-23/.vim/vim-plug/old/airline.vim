" let g:airline_extensions = ['hunks', 'branch', 'tabline']
let g:airline_extensions = ['hunks', 'branch', 'tabline']


let g:airline_powerline_fonts = 1                                                                                                       
" let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD                                                 

"TABLINE:                                                                                                                                 
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
"let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
"let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
"let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
" let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
" let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
let g:airline#extensions#tagbar#show_hierarchy = 0

" let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#right_sep = ' '
" let g:airline#extensions#tabline#right_alt_sep = '|'


let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_count = 1
let g:airline#extensions#tabline#show_tab_type = 1
" let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 1
" let g:airline#extensions#tabline#formatter = 'default'
let g:tagbar_skip_exit_check = 1
let g:airline#extensions#tabline#excludes = ['Tagbar']
let g:airline#extensions#tabline#excluded_buffers = ['Tagbar']

"STATUSLINE:
let g:airline#extensions#fileinfo#show_file_path = 0
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''

"let g:airline_section_c = ''

