vim.cmd([[
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim 键绑定
nnoremap ; :
nnoremap qq :q<CR>
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
]]) -- Vim 结束

local Hydra = require('hydra')
local KeyHome = [[
_nn_: NERDTree     _fy_: 翻译
_nc_: 注释
_<Space>_: 单词跳跃 _k_: Search _K_: DSearch
_q_: exit _<ESC>_: exit
]]
Hydra({
   name = 'Home',
   hint = KeyHome,-- 调用的按键注释名
   config = {
    foreign_keys = "warn",
    buffer = bufnr,
    color = 'pink',-- 支持连续按的键颜色
    invoke_on_body = true,-- 不允许只能按 body 支持的键
    hint = {
        border = 'rounded',-- 弹出的窗口圆润
        position = 'bottom-left'-- 弹出位置
     },
   },
   mode = {'n','v'},
   body = '<Leader>',
   heads = {
      -- { '',  , {exit = true, nowait = true,}},
      { 'fy', '<Leader>fy' , {exit = true, nowait = true,}},
      { 'nn', ':NERDTreeFind<CR>', {exit = true, nowait = true,}},
      { 'nc', '<Plug>NERDCommenterComment' , {exit = true, nowait = true,}},
      { '<Space>', ':HopChar1<CR>' , {exit = true, nowait = true,}},
      { 'k', ":call InterestingWords('n')<CR>" , {exit = true, nowait = true,}},
      { 'K', "call UncolorAllWords()<CR>" , {exit = true, nowait = true,}},
      { 'q', nil, { exit = true, nowait = true,}},
      { '<ESC>', nil, { exit = true, nowait = true,}},
   }
})
Hydra({
   name = 'Home',
   -- hint = KeyHome,
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
   body = '<Leader>fy',
   heads = {
      -- { '',  , {exit = true, nowait = true,}},
      { 'w', '<Plug>TranslateW' , {exit = true, nowait = true,}},
      { 'W', '<Plug>TranslateWV' , {exit = true, nowait = true,}},
      { '<ESC>', nil, { exit = true, nowait = true,}},
   }
})
