vim.cmd([[
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题
colorscheme dracula
" colorscheme_bg dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'vim-airline/vim-airline'
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_statusline_ontop=1 " 状态栏在上面

]])
