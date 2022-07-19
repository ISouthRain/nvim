vim.cmd([[
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" registers.nvim 剪贴板
let g:registers_tab_symbol = "\t"
let g:registers_window_border = "single"
let g:registers_window_min_height = 10

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdcommenter
" 默认在注释分隔符后添加空格
let g:NERDSpaceDelims = 1

" 使用简洁的语法进行美化的多行注释
let g:NERDCompactSexyComs = 1

" 对齐行注释分隔符向左对齐而不是跟随代码缩进
let g:NERDDefaultAlign = 'left'

" 将语言设置为默认使用其备用分隔符
let g:NERDAltDelims_java = 1

" 添加您自己的自定义格式或覆盖默认值
let g:NERDCustomDelimiters = { 'c': { 'left': '//' }, 'py': { 'left': '#' }, 'vim': { 'left': '"' }, 'vimrc': { 'left': '"' }, 'lua': { 'left': '--' }, 'el': { 'left': ';;' }, 'org': {'left': ';;'}}

" 允许注释和反转空行（在注释区域时很有用）
let g:NERDCommentEmptyLines = 1


" 取消注释时启用修剪尾随空格
let g:NERDTrimTrailingWhitespace = 1

" 启用 nerdcommenter 切换以检查所有选定的行是否被注释
let g:NERDToggleCheckAllLines = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" undotree
if has("persistent_undo")
    if has('win32')
        let target_path = expand('C:\Users\Jack\AppData\Local\nvim\.undodir')
    endif
    if has('unix')
        let target_path = expand('~/.config/nvim/.undodir')
    endif
    if has('macunix')
        let target_path = expand('~/.config/nvim/.undodir')
    endif
    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rainbow 括号不同颜色
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}


]])