vim.cmd([[
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

]])