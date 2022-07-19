vim.cmd([[
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim 键绑定
nnoremap ; :
nnoremap qq :q<CR>
" nnoremap <TAB><TAB> zfj
" nnoremap <TAB><TAB><TAB> zR
" nnoremap <TAB><TAB><TAB><TAB> zM
inoremap jk <ESC>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
inoremap <C-v> <ESC>pa

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader 键修改
let g:mapleader = "\<Space>"
set timeoutlen=500
let g:maplocalleader = ','
]])

local Hydra = require('hydra')
local KeyHome = [[
_nnn_: NERDTree
_nc_: 注释
_q_: exit _<ESC>_: exit
]]
Hydra({
   name = 'Home',
   hint = KeyHome,
   config = {
    foreign_keys = "warn",
    buffer = bufnr,
    color = 'pink',
    invoke_on_body = true,
    hint = {
        border = 'rounded',
        position = 'bottom-left'
     },
   },
   mode = {'n','v'},
   body = '<Leader>',
   heads = {
      -- { '',  , {exit = true, nowait = true,}},
      { 'nnn', ':NERDTreeFind<CR>', {exit = true, nowait = true,}},
      { 'nc', '<Plug>NERDCommenterComment' , {exit = true, nowait = true,}},
      { '<Space>', ':HopChar1<CR>' , {exit = true, nowait = true,}},
      { 'q', nil, { exit = true, nowait = true,}},
      { '<ESC>', nil, { exit = true, nowait = true,}},
   }
})

