vim.cmd([[
" 设置 vim 的内部编码，neovim 不需要，因为 coc.nvim 在文件中使用了一些 unicode 字符 autoload/float.vim
set encoding=utf-8

" 如果未设置隐藏，文本编辑可能会失败。
set hidden

" 一些服务器有备份文件的问题， see #649.
set nobackup
set nowritebackup

" 为显示消息留出更多空间.
set cmdheight=2

" 更新时间更长 (default is 4000 ms = 4 s) 导致明显的延迟和糟糕的用户体验。
set updatetime=300

" 不要将消息传递给 |ins-completion-menu|.
set shortmess+=c

" A始终显示符号列，否则每次诊断时都会移动文本appear/become 解决.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " 最近vim可以将signcolumn和number列合二为一
  set signcolumn=number
else
  set signcolumn=yes
endif

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction



function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" 按住光标时突出显示符号及其引用.
autocmd CursorHold * silent call CocActionAsync('highlight')


augroup mygroup
  autocmd!
  " 设置 formatexpr 指定的文件类型(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " 更新跳转占位符的签名帮助.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Add `:Format` 格式化当前缓冲区的命令.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` 折叠当前缓冲区的命令.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` 用于组织当前缓冲区导入的命令.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's 本机状态行支持.
" NOTE: Please see `:h coc-status` 与提供自定义状态行的外部插件集成： lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
]])