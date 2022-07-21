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
" set timeoutlen=500
set timeoutlen=1000
let g:maplocalleader = ','
" ==================================================================
" 键绑定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" barbar.nvim buffer 跳转
" nnoremap <Leader>bh :bp<CR>
" nnoremap <Leader>bl :bn<CR>
nnoremap <Leader>xk :bdelete<CR>
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
nnoremap <Leader>te :Telescope emoji<CR>
nnoremap <Leader>tf :Telescope find_files<CR>
nnoremap <Leader>tb :Telescope buffers<CR>
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
" vim-translator
" Echo translation in the cmdline
nmap <silent> <Leader>fyt <Plug>Translate
vmap <silent> <Leader>fyt <Plug>TranslateV
" Display translation in a window
nmap <silent> <Leader>fyw <Plug>TranslateW
vmap <silent> <Leader>fyw <Plug>TranslateWV
" Replace the text with translation
nmap <silent> <Leader>fyr <Plug>TranslateR
vmap <silent> <Leader>fyr <Plug>TranslateRV
" Translate the text in clipboard
nmap <silent> <Leader>fyx <Plug>TranslateX
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
local Hydra = require('hydra')
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
   name = 'Buffers',
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
_q_: exit        _<ESC>_: exit
]]
Hydra({
   name = 'Buffers',
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