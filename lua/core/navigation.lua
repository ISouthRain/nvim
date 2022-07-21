vim.cmd([[
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
" 忽略列表中的文件
let NERDTreeIgnore = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.egg$', '^\.git$', '^\.repo$', '^\.svn$', '^\.hg$' ]
"不显示项目树上额外的信息，例如帮助、提示什么的
let NERDTreeMinimalUI=1
let g:NERDTreeWinSize = 35 "设定 NERDTree 视窗大小
let NERDTreeHighlightCursorline = 1 " 高亮当前行
let NERDTreeHightCursorline=1 "高亮当前文件
let NERDTreeShowHidden=1 "显示隐藏文件
let NERDTreeShowLineNumbers = 1 " 显示行号
let g:NERDTreeQuitOnOpen = 1 "打开文件自动退出NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wilder.nvim
" Key bindings can be changed, see below
call wilder#setup({'modes': [':', '/', '?']})

" Default keys
call wilder#setup({
	  \ 'modes': [':', '/', '?'],
	  \ 'next_key': '<Tab>',
	  \ 'previous_key': '<S-Tab>',
	  \ 'accept_key': '<Down>',
	  \ 'reject_key': '<Up>',
	  \ })

" 'highlighter' : applies highlighting to the candidates
call wilder#set_option('renderer', wilder#wildmenu_renderer({
	  \ 'highlighter': wilder#basic_highlighter(),
	  \ }))
" Use wilder#wildmenu_lightline_theme() if using Lightline
" 'highlights' : can be overriden, see :h wilder#wildmenu_renderer()
call wilder#set_option('renderer', wilder#wildmenu_renderer(
	  \ wilder#wildmenu_airline_theme({
	  \   'highlights': {},
	  \   'highlighter': wilder#basic_highlighter(),
	  \   'separator': ' · ',
	  \ })))

" call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
      " \ 'border': 'rounded',
      " \ 'max_height': '75%',
      " \ 'min_height': 0,
      " \ 'prompt_position': 'top',
      " \ 'reverse': 0,
      " \ })))

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-interestingwords 高亮文本搜索
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
let g:interestingWordsRandomiseColors = 1 

]])

-----------------------------------------------------------
-- nvim-window 窗口数字
vim.cmd([[
hi BlackOnLightYellow guifg=#000000 guibg=#f2de91
]])

require('nvim-window').setup({
  -- The characters available for hinting windows.
  chars = {
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
    'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
  },

  -- A group to use for overwriting the Normal highlight group in the floating
  -- window. This can be used to change the background color.
  -- normal_hl = 'Normal',
  normal_hl = 'BlackOnLightYellow',

  -- The highlight group to apply to the line that contains the hint characters.
  -- This is used to make them stand out more.
  hint_hl = 'Bold',

  -- The border style to use for the floating window.
  border = 'single'
  
})
