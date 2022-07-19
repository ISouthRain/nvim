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

local hint = [[
  ^ ^        Options
  ^
  _v_ %{ve} virtual edit
  _i_ %{list} invisible characters  
  _s_ %{spell} spell
  _w_ %{wrap} wrap
  _c_ %{cul} cursor line
  _n_ %{nu} number
  _r_ %{rnu} relative number
  ^
       ^^^^                _<Esc>_
]]

Hydra({
   name = 'Options',
   hint = hint,
   config = {
      color = 'amaranth',
      invoke_on_body = true,
      hint = {
         border = 'rounded',
         position = 'middle'
      }
   },
   mode = {'n','x'},
   body = '<leader>o',
   heads = {
      { 'n', function()
         if vim.o.number == true then
            vim.o.number = false
         else
            vim.o.number = true
         end
      end, { desc = 'number' } },
      { 'r', function()
         if vim.o.relativenumber == true then
            vim.o.relativenumber = false
         else
            vim.o.number = true
            vim.o.relativenumber = true
         end
      end, { desc = 'relativenumber' } },
      { 'v', function()
         if vim.o.virtualedit == 'all' then
            vim.o.virtualedit = 'block'
         else
            vim.o.virtualedit = 'all'
         end
      end, { desc = 'virtualedit' } },
      { 'i', function()
         if vim.o.list == true then
            vim.o.list = false
         else
            vim.o.list = true
         end
      end, { desc = 'show invisible' } },
      { 's', function()
         if vim.o.spell == true then
            vim.o.spell = false
         else
            vim.o.spell = true
         end
      end, { exit = true, desc = 'spell' } },
      { 'w', function()
         if vim.o.wrap == true then
            vim.o.wrap = false
         else
            vim.o.wrap = true
         end
      end, { desc = 'wrap' } },
      { 'c', function()
         if vim.o.cursorline == true then
            vim.o.cursorline = false
         else
            vim.o.cursorline = true
         end
      end, { desc = 'cursor line' } },
      { '<Esc>', nil, { exit = true } }
   }
})