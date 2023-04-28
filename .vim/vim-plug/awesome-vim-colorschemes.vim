"set background=light
"colorscheme gruvbox

" :colorscheme 256noir 

"set background=dark "light
":colorscheme PaperColor

" :colorscheme abstract

" set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" :colorscheme ayu

" :colorscheme lightning

":colorscheme jellybeans 
":colorscheme solarized8

" set background=dark
" set termguicolors
" :colorscheme iceberg

" === Best ColorScheme ===

" set termguicolors
" colorscheme deep-space

" set termguicolors
" colorscheme jellybeans

" set termguicolors
" set background=dark
" colorscheme gruvbox
"let g:gruvbox_italic=1

" set termguicolors
" colorscheme challenger_deep

" let g:sierra_Pitch = 1
" colorscheme sierra

" set t_Co=256   " This is may or may not needed.
" set background=dark
" colorscheme PaperColor
" let g:PaperColor_Theme_Options = {
"   \   'theme': {
"   \     'default.dark': {
"   \       'override' : {
"   \         'color00' : ['#080808', '232'],
"   \         'linenumber_bg' : ['#080808', '232']
"   \       }
"   \     }
"   \   }
"   \ }

" colorscheme gotham256

" Jellybeans config
" set termguicolors
:colorscheme jellybeans
let g:jellybeans_use_term_italics = 1

let g:jellybeans_overrides = {
\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
\              'attr': 'bold' },
\    'Comment': { 'guifg': 'cccccc' },
\}
" let g:jellybeans_overrides = {
" \    'background': { 'guibg': '000000' },
" \}
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif








" Returns true if the color hex value is light
" function! IsHexColorLight(color) abort
"   let l:raw_color = trim(a:color, '#')

"   let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
"   let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
"   let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

"   let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

"   return l:brightness > 155
" endfunction
