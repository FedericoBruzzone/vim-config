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

set termguicolors
colorscheme deep-space

" Returns true if the color hex value is light
" function! IsHexColorLight(color) abort
"   let l:raw_color = trim(a:color, '#')

"   let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
"   let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
"   let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

"   let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

"   return l:brightness > 155
" endfunction
