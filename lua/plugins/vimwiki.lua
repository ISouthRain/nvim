vim.cmd([[
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
