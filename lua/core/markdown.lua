vim.cmd([[
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件类型 命令生效的文件
autocmd Filetype markdown inoremap <buffer> <silent> ;, <++>
autocmd Filetype markdown inoremap <buffer> <silent> ;f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown nnoremap <buffer> <silent> ;f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap <buffer> <silent> ;s <Esc>/ <++><CR>:nohlsearch<CR>c5l
autocmd Filetype markdown inoremap <buffer> <silent> ;- ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> <silent> ;b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> <silent> ;x ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> <silent> ;x ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> <silent> ;q `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> <silent> ;c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> <silent> ;g - [ ] <Enter><++><ESC>kA
autocmd Filetype markdown inoremap <buffer> <silent> ;u <u></u><++><Esc>F/hi
autocmd Filetype markdown inoremap <buffer> <silent> ;p ![](<++>) <Enter><++><Esc>kF[a
autocmd Filetype markdown inoremap <buffer> <silent> ;a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> <silent> ;1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <silent> ;2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <silent> ;3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <silent> ;4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <silent> ;t <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
autocmd Filetype markdown inoremap <buffer> <silent> ;T <C-R>=strftime("%Y-%m-%d")<CR>
" 自定义模板
autocmd Filetype markdown inoremap <buffer> <silent> ;mj <C-R>=strftime("%H:%M ---> ")<CR><ESC>$a
autocmd Filetype markdown inoremap <buffer> <silent> ;mf <Space>---><Space><++><ESC>0i
autocmd Filetype markdown inoremap <buffer> <silent> ;me <ESC>:Telescope emoji<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" markdown-preview
" 设置为1，nvim进入markdown缓冲区后会打开预览窗口
" default: 0
let g:mkdp_auto_start = 0

" 设置为 1，nvim 将在更改时自动关闭当前预览窗口
" 从降价缓冲区到另一个缓冲区
" default: 1
let g:mkdp_auto_close = 1

" 设置为 1，vim 将在保存缓冲区时刷新 Markdown 或
" 退出插入模式，默认 0 是编辑或编辑时自动刷新降价
" 移动光标
" default: 0
let g:mkdp_refresh_slow = 0

" 设置为 1，markdown 预览命令可用于所有文件，
" 默认情况下，它可以在 markdown 文件中使用
" default: 0
let g:mkdp_command_for_global = 0

" 设置为 1，预览服务器可供您网络中的其他人使用
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" 使用自定义ip打开预览页面
" 当您在远程 vim 中工作并在本地浏览器上预览时很有用
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" 指定浏览器打开预览页面
" default: ''
let g:mkdp_browser = ''

" 设置为 1，打开预览页面时在命令行中回显预览页面 url
" default is 0
let g:mkdp_echo_preview_url = 0

" 用于打开预览页面的自定义 vim 函数名称
" 此函数将接收 url 作为参数
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" 使用自定义端口启动服务器或随机为空
let g:mkdp_port = ''

" 预览页面标题
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" 识别的文件类型
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimwiki
"将默认wiki语法改为markdow
if has('unix')" macunix unix win32
"    echo "这是Unix 配置"
    let g:vimwiki_list = [{'path': '~/MyFile/Org/Home/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
endif
if has('win32')" macunix unix win32
"    echo "这是Windows 配置"
    let g:vimwiki_list = [{'path': 'F:\\Hugo\\content\\posts\\',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
endif
if has('macunix')" macunix unix win32
"    echo "这是Mac 配置"
    let g:vimwiki_list = [{'path': '~/MyFile/Org/Home/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
endif
]])

require('telescope').load_extension('heading')