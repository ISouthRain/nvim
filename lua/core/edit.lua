vim.cmd([[
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-translator
"翻译窗口设置"
let g:translator_window_max_width = 0.6
let g:translator_window_max_height = 0.4
" 翻译到目标的语言
let g:translator_target_lang = 'zh'

let g:translator_default_engines = ['bing', 'google']
"" 翻译器窗口的文本突出显示
hi def link TranslatorQuery             Identifier
hi def link TranslatorDelimiter         Special
hi def link TranslatorExplain           Statement

" 翻译器窗口边框背景
hi def link Translator                  Normal
hi def link TranslatorBorder            NormalFloat"

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
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" vim-indent-guides 指导线
let g:indent_guides_guide_size = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level = 2  " 从第二层开始可视化显示缩进

]]) ------- Viml End

-------------------------------------------------------
-- indent-blankline.nvim 指导线
-- -- 两者配置二选一
-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
--
-- require("indent_blankline").setup {
	-- show_end_of_line = true,
	-- space_char_blankline = " ",
-- }
-- lua << EOF

--- 与上面配置 两者二选一

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
--vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
--EOF
