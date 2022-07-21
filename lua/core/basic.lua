vim.cmd([[

"***********vim配置***********
" ==============================
" == 基础设置
" set nu "设置显示行号
" 相对行号
" set relativenumber
" 共享剪切板
set clipboard+=unnamed
syntax on "语法检测
set tabstop=4 "设置TAB宽度
set nobackup "不备份
set noeb " 去掉输入错误的提示声音
"设置帮助信息
set helplang=cn
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
" 禁止生成临时文件
set nobackup
set noswapfile
"不复制行号
se mouse+=a
set autoread
" 设置中文帮助
set helplang=cn
" *******解决中文乱码******""
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" 文件在外部更新后立马刷新文件
set autoread
au CursorHold * checktime

]])

