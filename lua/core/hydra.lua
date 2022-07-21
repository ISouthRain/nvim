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
" set timeoutlen=1000
let g:maplocalleader = ','
" ==================================================================
" 键绑定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" barbar.nvim buffer 跳转
" nnoremap <Leader>bh :bp<CR>
" nnoremap <Leader>bl :bn<CR>
nnoremap <Leader>xk :bdelete<CR>
nnoremap <Leader>cd :cd %:p:h:h
nnoremap <Leader>xf :Telescope find_files<CR>
nnoremap <f2> :Startify<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
nnoremap <Leader>mh :Telescope heading<CR>

" """" vim-simple-todo 
" Disable default key bindings
let g:simple_todo_map_keys = 0
nmap <Leader>mtn <Plug>(simple-todo-new)
nmap <Leader>mts <Plug>(simple-todo-mark-switch)
" 自定义 Hugo 目录
if has('win32') "macunix unix win32
   nnoremap <Leader>mdf :e F:\\Hugo\\content\\posts\\Home.md<CR>
endif
if has('unix') "macunix unix win32
   nnoremap <Leader>mdf :e ~/Ubuntu/ubuntu-fs/root/Hugo/content/posts/Home.md<CR>
endif
if has('macunix') "macunix unix win32
   nnoremap <Leader>mdf :e ~/Desktop/Hugo/content/posts/Home.md<CR>
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function
nnoremap <Leader>5 :call CompileRunClang()<CR>
nnoremap <Leader>sdcc :call CompileRunSdcc()<CR>
nnoremap <Leader>git :call CompileRunGit()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" telescope
" nnoremap <Leader>te :Telescope emoji<CR>
" nnoremap <Leader>tf :Telescope find_files<CR>
" nnoremap <Leader>tb :Telescope buffers<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-bookmarks
" 注释书签
let g:bookmark_no_default_key_mappings = 0
nnoremap ma :BookmarkAnnotate<CR>
nnoremap mm :BookmarkToggle<CR>
nnoremap ms :BookmarkShowAll<CR>
nnoremap mj :BookmarkNext<CR>
nnoremap mk :BookmarkPrev<CR>
nnoremap mC :BookmarkClearAll<CR>
nnoremap mc :BookmarkClear<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " vim-translator
" " Echo translation in the cmdline
" nmap <silent> <Leader>fyt <Plug>Translate
" vmap <silent> <Leader>fyt <Plug>TranslateV
" " Display translation in a window
" nmap <silent> <Leader>fyw <Plug>TranslateW
" vmap <silent> <Leader>fyw <Plug>TranslateWV
" " Replace the text with translation
" nmap <silent> <Leader>fyr <Plug>TranslateR
" vmap <silent> <Leader>fyr <Plug>TranslateRV
" " Translate the text in clipboard
" nmap <silent> <Leader>fyx <Plug>TranslateX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdcommenter 注释
" 是否创建默认按键映射?
let g:NERDCreateDefaultMappings = 0
" 切换所选行的注释状态。如果最上面的选定行是注释的，则所有选定的行都是不注释的，反之亦然。
nmap nci <Plug>NERDCommenterToggle
vmap nci <Plug>NERDCommenterToggle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree 文件浏览器
nnoremap <Leader>nn :NERDTreeFind<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" hop.nvim
nnoremap <Leader><Space> :HopChar1<CR>
vnoremap <Leader><Space> :HopChar1<CR>

]]) -- Vim 结束
-----------------------------------------------------------------
-- hop.nvim
-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
-----------------------------------------------------------------
-- Hydra
local Hydra = require('hydra')
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
       ^^^^     _q_           _<Esc>_
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
   body = '<F6>',
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
         if vim.o.wrap ~= true then
            vim.o.wrap = true
            -- Dealing with word wrap:
            -- If cursor is inside very long line in the file than wraps
            -- around several rows on the screen, then 'j' key moves you to
            -- the next line in the file, but not to the next row on the
            -- screen under your previous position as in other editors. These
            -- bindings fixes this.
            vim.keymap.set('n', 'k', function() return vim.v.count > 0 and 'k' or 'gk' end,
                                     { expr = true, desc = 'k or gk' })
            vim.keymap.set('n', 'j', function() return vim.v.count > 0 and 'j' or 'gj' end,
                                     { expr = true, desc = 'j or gj' })
         else
            vim.o.wrap = false
            vim.keymap.del('n', 'k')
            vim.keymap.del('n', 'j')
         end
      end, { desc = 'wrap' } },
      { 'c', function()
         if vim.o.cursorline == true then
            vim.o.cursorline = false
         else
            vim.o.cursorline = true
         end
      end, { desc = 'cursor line' } },
      { '<Esc>', nil, { exit = true } },
      { 'q', nil, { exit = true } }
   }
})
-----------------------------------------------------------------
-- Home
-- local KeyHome = [[
-- _nn_: NERDTree     _fy_: 翻译
-- _nc_: 注释
-- _<Space>_: 单词跳跃 _k_: Search _K_: DSearch
-- _q_: exit _<ESC>_: exit
-- ]]
-- Hydra({
--    name = 'Home',
--    hint = KeyHome,-- 调用的按键注释名
--    config = {
--     foreign_keys = "warn",
--     buffer = bufnr,
--     color = 'pink',-- 支持连续按的键颜色
--     invoke_on_body = true,-- 不允许只能按 body 支持的键
--     hint = {
--         border = 'rounded',-- 弹出的窗口圆润
--         position = 'bottom-left'-- 弹出位置
--      },
--    },
--    mode = {'n','v'},
--    body = '<Leader>',
--    heads = {
--       -- { '',  , {exit = true, nowait = true,}},
--       { 'nn', ':NERDTreeFind<CR>', {exit = true, nowait = true,}},
--       { 'nc', '<Plug>NERDCommenterComment' , {exit = true, nowait = true,}},
--       { '<Space>', ':HopChar1<CR>' , {exit = true, nowait = true,}},
--       { 'k', ":call InterestingWords('n')<CR>" , {exit = true, nowait = true,}},
--       { 'K', "call UncolorAllWords()<CR>" , {exit = true, nowait = true,}},
--       { 'q', nil, { exit = true, nowait = true,}},
--       { '<ESC>', nil, { exit = true, nowait = true,}},
--    }
-- })
-----------------------------------------------------------------
-- Buffer Windows
local HydraBuffer = [[
_h_: light buff  _l_: right buff  _K_: kill buff
_w_: num Window  _s_: split       _v_: vsplit
_R_: RWindow     _b_: Sech buff
_q_: exit        _<ESC>_: exit
]]
Hydra({
   name = 'Buffers',
   hint = HydraBuffer,-- 调用的按键注释名
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
   body = '<Leader>b',
   heads = {
	  -- { '',  , {exit = true, nowait = true,}},
	  { 'l', ":bn<CR>" , {exit = false, nowait = true,}},
	  { 'h', ":bp<CR>" , {exit = false, nowait = true,}},
	  { 'b', ":Telescope buffers<CR>" , {exit = true, nowait = true,}},
	  { 'K', ":bdelete<CR>" , {exit = false, nowait = true,}},
	  { 'w', ":lua require('nvim-window').pick()<CR>" , {exit = true, nowait = true,}},
	  { 's', ":split<CR>" , {exit = false, nowait = true,}},
	  { 'v', ":vsplit<CR>" , {exit = false, nowait = true,}},
	  { 'R', ":q<CR>" , {exit = false, nowait = true,}},
	  { 'q', nil, { exit = true, nowait = true,}},
	  { '<ESC>', nil, { exit = true, nowait = true,}},
   }
})
-----------------------------------------------------------------
-- vim-translate
local HydraTranslateN = [[
_t_: tabline  _w_: window  _r_: replace
_q_: exit     _<ESC>_: exit
]]
Hydra({
   name = 'Translate',
   hint = HydraTranslateN,-- 调用的按键注释名
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
   mode = {'n'},
   body = '<Leader>fy',
   heads = {
	  -- { '',  , {exit = true, nowait = true,}},
	  { 'w', "<Plug>TranslateW" , {exit = true, nowait = true,}},
	  { 'r', "<Plug>TranslateR" , {exit = true, nowait = true,}},
	  { 't', "<Plug>Translate" , {exit = true, nowait = true,}},
	  { 'q', nil, { exit = true, nowait = true,}},
	  { '<ESC>', nil, { exit = true, nowait = true,}},
   }
})
local HydraTranslateV = [[
_t_: tabline  _w_: window  _r_: replace
_q_: exit     _<ESC>_: exit
]]
Hydra({
   name = 'Translate',
   hint = HydraTranslateV,-- 调用的按键注释名
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
   mode = {'v'},
   body = '<Leader>fy',
   heads = {
	  -- { '',  , {exit = true, nowait = true,}},
	  { 'w', "<Plug>TranslateWV" , {exit = true, nowait = true,}},
	  { 'r', "<Plug>TranslateRV" , {exit = true, nowait = true,}},
	  { 't', "<Plug>TranslateV" , {exit = true, nowait = true,}},
	  { 'q', nil, { exit = true, nowait = true,}},
	  { '<ESC>', nil, { exit = true, nowait = true,}},
   }
})
-----------------------------------------------------------------
-- Telescope
local HydraTelescope = [[
_f_: files    _e_: emoji
_q_: exit     _<ESC>_: exit
]]
Hydra({
   name = 'Telescope',
   hint = HydraTelescope,-- 调用的按键注释名
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
   mode = {'n'},
   body = '<Leader>t',
   heads = {
	  -- { '',  , {exit = true, nowait = true,}},
	  { 'f', ":Telescope find_files<CR>" , {exit = true, nowait = true,}},
	  { 'e', ":Telescope emoji<CR>" , {exit = true, nowait = true,}},
	  { 'q', nil, { exit = true, nowait = true,}},
	  { '<ESC>', nil, { exit = true, nowait = true,}},
   }
})
-----------------------------------------------------------------
-- Markdown
vim.cmd([[
autocmd Filetype markdown inoremap <buffer> <silent> ;t <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
autocmd Filetype markdown inoremap <buffer> <silent> ;T <C-R>=strftime("%Y-%m-%d")<CR>
" 自定义模板
autocmd Filetype markdown inoremap <buffer> <silent> ;j <C-R>=strftime("%H:%M ---> ")<CR><ESC>$a
]])
local HydraMarkdown = [[
_b_: 删除线      _k_: 块   _K_: 代码块
_f_: Todo       _l_: 链接  _L_: 外链接
_u_: 下划线     _<Space>_: -->
_c_: 粗体       _x_: 斜体
_e_: Emoji
_q_: exit       _<ESC>_: exit
]]
Hydra({
   name = 'Markdown',
   hint = HydraMarkdown,-- 调用的按键注释名
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
   mode = {'i'},
   body = ';m',
   heads = {
	  -- { '',  , {exit = true, nowait = true,}},
     { 'b', "~~~~ <++><Esc>F~hi" , {exit = true, nowait = true,}},
     { 'c', "**** <++><Esc>F*hi" , {exit = true, nowait = true,}},
     { 'x', "** <++><Esc>F*i" , {exit = true, nowait = true,}},
     { 'k', "`` <++><Esc>F`i" , {exit = true, nowait = true,}},
     { 'K', "```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA" , {exit = true, nowait = true,}},
     { 'f', "- [ ] <Enter><++><ESC>kA" , {exit = true, nowait = true,}},
     { 'u', "<u></u><++><Esc>F/hi" , {exit = true, nowait = true,}},
     { 'l', "![](<++>) <Enter><++><Esc>kF[a" , {exit = true, nowait = true,}},
     { 'L', "[](<++>) <++><Esc>F[a" , {exit = true, nowait = true,}},
     { '<Space>', "<Space>---><Space><++><ESC>0i" , {exit = true, nowait = true,}},
	  { 'e', "<ESC>:Telescope emoji<CR>" , {exit = true, nowait = true,}},
	  { 'q', nil, { exit = true, nowait = true,}},
	  { '<ESC>', nil, { exit = true, nowait = true,}},
   }
})
