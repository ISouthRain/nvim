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
" hop.nvim
require'hop'.setup()
]])