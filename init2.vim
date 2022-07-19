
"if has('win32') "macunix unix win32
"    echo "这是Windows 配置"
"endif

" set nocompatible
" filetype off
" set rtp+=~/.config/nvim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" " ================= Markdown =================
" Plugin 'iamcco/markdown-preview.nvim'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'dhruvasagar/vim-table-mode'
" call vundle#end()
" filetype plugin indent on
call plug#begin('~/.config/nvim/plugged')
" ================= Markdown =================
Plug 'iamcco/markdown-preview.nvim'
Plug 'plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'


" 终端
Plug 'akinsho/toggleterm.nvim'
" =========================================
" Github 补全
Plug 'github/copilot.vim'
" ================= 键绑定 =================
Plug 'hecal3/vim-leader-guide'
Plug 'liuchengxu/vim-which-key' " 键绑定
" ========================================

" ================= 启动插件 =================
Plug 'dstein64/vim-startuptime' " 测试启动时间 使用命令 StartupTime
Plug 'mhinz/vim-startify' " vim打开最近打开的文件

Plug 'nvim-neorg/neorg'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update


" ================= 书签 =================
Plug 'MattesGroeger/vim-bookmarks' " 书签

" ================= 指导线 =================
Plug 'lukas-reineke/indent-blankline.nvim' " 指导线
Plug 'nathanaelkane/vim-indent-guides' "缩进线，与上面的指导线插件可以二选一,因为这个插件似乎没有用

" ================= Telecope 众包 =================
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' " 搜索
Plug 'LinArcX/telescope-command-palette.nvim' " 函数提示
Plug 'xiyaowong/telescope-emoji.nvim' " 基于 Telescope 的表情符号
Plug 'crispgm/telescope-heading.nvim' " 文件标题查找

" ================= 命令/搜索提示 =================
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' } " 命令行提示 与 pynvim 冲突, /搜索用不了

" ================= Buffer 标签栏 =================
Plug 'kyazdani42/nvim-web-devicons' " 图标依赖
Plug 'romgrk/barbar.nvim'
" Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }



" ================= 翻译插件 =================
Plug 'voldikss/vim-translator' "翻译插件



" ================= 计算机语言 =================
" Plug 'puremourning/vimspector' " 语言调试器
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocInstall coc-json coc-tsserver coc-pyright coc-html'} "补全插件

" ================= 其余插件 =================
Plug 'jiangmiao/auto-pairs' " 符号补全
Plug 'luochen1990/rainbow' " 括号不同颜色
Plug 'mbbill/undotree' "更改历史
Plug 'lfv89/vim-interestingwords' " 高亮搜索文本不同颜色 
Plug 'itchyny/calendar.vim' " 日历
" Plug 'mg979/vim-visual-multi', {'branch': 'master'} "块代码编辑



" ================= Markdown =================
Plug 'vimwiki/vimwiki' "个人wiki
Plug 'vitalk/vim-simple-todo' " TODO 
" Markdown , Org-mode , vinwiki ,norg 代码块运行后返回值
" Plug 'jubnzv/mdeval.nvim'

" ================= 字符对齐 =================
Plug 'junegunn/vim-easy-align' " 字符对齐
Plug 'godlygeek/tabular' " 字符对齐


" ================= 光标快速移动 =================
Plug 'phaazon/hop.nvim'

call plug#end()

"********* 配置键绑定开始 hecal3/vim-leader-guide*********
let g:lmap =  {}
"********* 配置键绑定结束 hecal3/vim-leader-guide*********

"********* 配置键绑定开始 *********
" " 设置 leader 键
let g:mapleader = "\<Space>"
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
let g:maplocalleader = ','
" nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
" nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
let g:which_key_map =  {}
call which_key#register('<Space>', "g:which_key_map")
let g:which_key_map['w'] = {
	  \ 'name' : '+ 窗口管理' ,
	  \ 'w' : ['<C-W>w'     , '其他窗口']          ,
	  \ 'd' : ['<C-W>c'     , '删除窗口']         ,
	  \ '-' : ['<C-W>s'     , '拆分窗口 - 下面']    ,
	  \ '|' : ['<C-W>v'     , '拆分窗口- 右边']    ,
	  \ '2' : ['<C-W>v'     , '布局双列'] ,
	  \ 'h' : ['<C-W>h'     , '窗口左侧']           ,
	  \ 'j' : ['<C-W>j'     , '窗口下侧']          ,
	  \ 'l' : ['<C-W>l'     , '窗户-右侧']          ,
	  \ 'k' : ['<C-W>k'     , '窗户-上侧']             ,
	  \ 'H' : ['<C-W>5<'    , '向左扩展']    ,
	  \ 'J' : [':resize +5'  , '向下扩展']   ,
	  \ 'L' : ['<C-W>5>'    , '向右扩展']   ,
	  \ 'K' : [':resize -5'  , '向上扩展']      ,
	  \ '=' : ['<C-W>='     , 'balance-window']        ,
	  \ 's' : ['<C-W>s'     , '向下分裂窗口']    ,
	  \ 'v' : ['<C-W>v'     , '平行分裂窗口']    ,
	  \ '?' : ['Windows'    , 'fzf-window']            ,
	  \ }
let g:which_key_map['F'] = {
	  \ 'name' : '+F1-F12' ,
	  \ '1' : ['<F1>'     , 'F1']          ,
	  \ '2' : ['<F2>'     , 'F2']         ,
	  \ '3' : ['<F3>'     , 'F3']    ,
	  \ '4' : ['<F4>'     , 'F4']    ,
	  \ '5' : ['<F5>'     , 'F5'] ,
	  \ '6' : ['<F6>'     , 'F6']           ,
	  \ '7' : ['<F7>'     , 'F7']          ,
	  \ '8' : ['<F8>'     , 'F8']          ,
	  \ '9' : ['<F9>'     , 'F9']             ,
	  \ '10' : ['<F10>'    , 'F10']    ,
	  \ '11' : ['<F11>'  , 'F11']   ,
	  \ '12' : ['<F12>'    , 'F12']   ,
	  \ '0' : ['<F0>'  , 'F0']      ,
	  \ }
" 模板
" let g:which_key_map['模板'] = {
	 " \ 'name' : '+' ,
	 " \ '' : ['<>'     , '']          ,
	 " \ '' : ['<>'     , '']         ,
	 " \ '' : ['<>'     , '']    ,
	 " \ '' : ['<>'     , '']    ,
	 " \ '' : ['<>'     , ''] ,
	 " \ '' : ['<>'     , '']           ,
	 " \ '' : ['<>'     , '']          ,
	 " \ '' : ['<>'     , '']          ,
	 " \ '' : ['<>'     , '']             ,
	 " \ '' : ['<>'    , '']    ,
	 " \ '' : ['<>'  , '']   ,
	 " \ '' : ['<>'    , '']   ,
	 " \ '' : ['<>'  , '']      ,
	 " \ }
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

call which_key#register('<Space>', "g:which_key_map")

" nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
" vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

"******** 配置键绑定结束 *************


"======= 配置 vim-simple-todo 开始 ======================
" Disable default key bindings
let g:simple_todo_map_keys = 0

nmap <capslock>simple-todo-new <Plug>(simple-todo-new)
" imap <leader>t <Plug>(simple-todo-new)

nmap <capslock>simple-todo-mark-switch <Plug>(simple-todo-mark-switch)
" " imap <leader>T <Plug>(simple-todo-mark-switch)
" let g:which_key_map['todo'] = {
" 	 \ 'name' : '+ Markdown todo 状态' ,
" 	 \ 's' : ['<capslock>simple-todo-mark-switch'     , '更改 todo 状态']          ,
" 	 \ 'n' : ['<capslock>simple-todo-new'     , '创建一个新的 todo']         ,
" 	 \ }
" 	 " \ '' : ['<>'  , '']      ,

" ======= 配置 vim-simple-todo 结束 ======================




"======== markdown-preview.nvim 配置 开始 ================
lua << EOF
require('plugins.markdown-preview')
EOF
"======== markdown-preview.nvim 配置 结束 ================



"============ 注释 nerdcommenter 开始 ===================

" 创建默认映射
"let g:NERDCreateDefaultMappings = 1
" nmap nci <Plug>NERDCommenterComment
" vmap nci <Plug>NERDCommenterComment
" nmap ncc <Plug>NERDCommenterUncomment
" vmap ncc <Plug>NERDCommenterUncomment
map <capslock>NERDCommenterInvert <Plug>NERDCommenterInvert
map <capslock>NERDCommenterUncomment <Plug>NERDCommenterUncomment
map <capslock>NERDCommenterComment <Plug>NERDCommenterComment
map <capslock>NERDCommenterNested <Plug>NERDCommenterNested
map <capslock>NERDCommenterToggle <Plug>NERDCommenterToggle

let g:lmap.nc = {
				\'name' : '注释',
				\'i' : ['call feedkeys("\<Plug>NERDCommenterComment")', '注释'],
				\'c' : ['call feedkeys("\<Plug>NERDCommenterUncomment")', '取消注释'],
                \}

let g:which_key_map['nc'] = {
	 \ 'name' : '+ 注释' ,
	 \ 'i' : ['<capslock>NERDCommenterInvert'     , '注释和取消注释同时进行']          ,
	 \ 'u' : ['<capslock>NERDCommenterUncomment'     , '取消注释代码']          ,
	 \ 'c' : ['<capslock>NERDCommenterComment'  , '已经有注释的会继续添加注释, 没有注释的会添加']      ,
	 \ 'n' : ['<capslock>NERDCommenterNested'  , 'Same as cc but forces nesting']      ,
	 \ 't' : ['<capslock>NERDCommenterToggle'  , '根据第一行选择是否注释']      ,
	 \ }
   "   " \ '' : ['<>'  , '']      ,



"============ 注释 nerdcommenter 结束 ===================



"=========== 个人 vimwiki 开始  =======================

lua << EOF
require('plugins.vimwiki')
EOF

map <capslock>wikiindex :VimwikiIndex<CR>
map <capslock>wikitabindex <Plug>VimwikiTabIndex
map <capslock>wiki2html :Vimwiki2HTML<CR>
map <capslock>wikirenamefile :VimwikiRenameFile<CR>
map <capslock>wikiall2html :VimwikiAll2HTML<CR>
map <capslock>wikiuiselect :VimwikiUISelect<CR>
map <capslock>wikideletefile :VimwikiDeleteFile<CR>

let g:lmap.wiki = {
				\'name' : 'Wiki',
				\'w' : [':VimwikiIndex', '打开默认的 wiki 目录文件'],
				\'t' : ['call feedkeys("\<Plug>VimwikiTabIndex")', '在新标签（Tab）中打开 wiki 目录文件'],
				\'r' : ['VimwikiRenameFile', '重命名当前 wiki 文件'],
				\'h' : ['Vimwiki2HTML', '将当前 wiki 文件转换成 HTML 网页'],
				\'H' : ['VimwikiAll2HTML', '把所有 wiki 文件转换成 HTML 网页'],
				\'d' : ['VimwikiDeleteFile', '删除当前 wiki 文件'],
                \'s' : ['VimwikiUISelect', '在多个 wiki 中选择并打开该 wiki 的目录文件'],
                \}

let g:which_key_map['wiki'] = {
	  \ 'name' : '+ Wiki插件' ,
	  \ 'w' : ['<capslock>wikiindex'     , '打开默认的 wiki 目录文件']          ,
	  \ 't' : ['<capslock>wikitabindex'     , '在新标签（Tab）中打开 wiki 目录文件']         ,
	  \ 'r' : ['<capslock>wikirenamefile'  , '重命名当前 wiki 文件']      ,
	  \ 'h' : ['<capslock>wiki2html'  , '将当前 wiki 文件转换成 HTML 网页']      ,
	  \ 'ah' : ['<capslock>wikiall2html'  , ' 把所有 wiki 文件转换成 HTML 网页']      ,
	  \ 's' : ['<capslock>wikiuiselect'  , '在多个 wiki 中选择并打开该 wiki 的目录文件']      ,
	  \ 'd' : ['<capslock>wikideletefile'  , ' 删除当前 wiki 文件']      ,
	  \ }
"      \ '' : ['<>'  , '']      ,

"=========== 个人 vimwiki 结束 ========================

" ****************配置语言调试器 vimspector ***********************
lua << EOF
require('plugins.vimspector')
EOF
let g:vimspector_enable_mappings = 'HUMAN'
" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

" ****************配置语言调试器 vimspector 结束***********************


" ******* 翻译插件配置 vim-translator 开始 *********"

lua << EOF
require('plugins.vim-translator')
EOF
" let s:vim_translator_hydra =
            " \ {
            " \   'name':        'Vim_translator',
            " \   'title':       '翻译',
            " \   'show':        'popup',
            " \   'exit_key':    "\<ESC>",
            " \   'feed_key':    v:false,
            " \   'foreign_key': v:true,
            " \   'keymap': [
            " \     {
            " \       'name': 'Home',
            " \       'keys': [
            " \         ['w', "norm \<capslock>transw", '窗口翻译', 'exit'],
            " \         ['r', "norm \<capslock>trans", '翻译并替换文本', 'exit'],
            " \         ['t', "norm \<capslock>transt", '状态栏翻译', 'exit'],
            " \       ]
            " \     },
            " \   ]
"             \ }
" silent call hydra#hydras#register(s:vim_translator_hydra)

" 普通模式，<capslock>transt 翻译光标下的文本，在命令行回显翻译内容
nmap <silent> <capslock>transt <Plug>Translate
" nmap <silent> <Leader>fyt <Plug>Translate
" 可视模式，<capslock>transt 翻译光标下的文本，在命令行回显翻译内容
vmap <silent> <capslock>transt <Plug>TranslateV
" vmap <silent> <Leader>fyt <Plug>TranslateV

" 普通模式，<capslock>transw 翻译光标下的文本，在窗口中显示翻译内容
nmap <silent> <capslock>transw <Plug>TranslateW
" nmap <silent> <Leader>fyw <Plug>TranslateW
" 可视模式，<capslock>transw 翻译光标下的文本，在窗口中显示翻译内容
vmap <silent> <capslock>transw <Plug>TranslateWV
" vmap <silent> <Leader>fyw <Plug>TranslateWV

" 普通模式，<capslock>transr 替换光标下的文本为翻译内容
nmap <silent> <capslock>transr <Plug>TranslateR
" nmap <silent> <Leader>fyr <Plug>TranslateR
" 可视模式，<capslock>transr 替换光标下的文本为翻译内容
vmap <silent> <capslock>transr <Plug>TranslateRV
" vmap <silent> <Leader>fyr <Plug>TranslateRV
let g:lmap.fy = {
				\'name' : '翻译',
				\'w' : ['call feedkeys("\<Plug>TranslateW")', '窗口翻译'],
                \'wv' : ['call feedkeys("\<Plug>TranslateWV")',  '窗口翻译'],
				\'r' : ['TranslateR', '替换翻译'],
				\'t' : ['Translate', '状态栏翻译'],
                \}




let g:which_key_map['fg'] = {
	  \ 'name' : '+ 翻译文本插件' ,
	  \ 't' : ['<capslock>transt'     , '状态栏翻译']          ,
	  \ 'tv' : ['<capslock>transt'     , '状态栏翻译']         ,
	  \ 'w' : ['<capslock>transw'     , '窗口翻译']    ,
	  \ 'wv' : ['<capslock>transw'     , '窗口翻译']    ,
	  \ 'r' : ['<capslock>transr'     , '翻译并替换文本'] ,
	  \ 'rv' : ['<capslock>transr'     , '翻译并替换文本']           ,
	  \ }



" ******* 翻译插件配置 vim-translator  结束*********"


"*********配置插件rainbow括号不同颜色*******
lua << EOF
require('plugins.rainbow')
EOF
"*********配置插件 rainbow 括号不同颜色 结束*******


"**********配置文件模糊搜索插件 LeaderF ****
lua << EOF
require('plugins.LeaderF')
EOF


let g:Lf_ShortcutF = "<leader>f" " 开始查找快捷键
" let g:which_key_map.f = '文件模糊搜索LeaderF'
" let g:which_key_map.b = 'LeaderF缓存buff'

noremap <capslock>lfb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <capslock>lfm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <capslock>lft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <capslock>lfl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first

noremap <capslock>lfr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <capslock>lfd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <capslock>lfo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <capslock>lfn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <capslock>lfp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

"**********配置文件模糊搜索插件 LeaderF  结束****

" ********** 文本高亮插件 vim-interestingwords 开始 **************

lua << EOF
require('plugins.vim-interestingwords')
EOF

let g:lmap.k = ["call InterestingWords('n')", '高亮文本并查找']
let g:lmap.K = ["call UncolorAllWords()", '取消所有高亮文本']
" let g:which_key_map.k = '高亮文本并查找'



" ********** 文本高亮插件  vim-interestingwords 结束*************

"""********** 配置缩进线 indetline 开始 vim-indent-guides **********
let g:indent_guides_guide_size = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level = 2  " 从第二层开始可视化显示缩进
"""********** 配置缩进线 indetline 结束	vim-indent-guides **********


" ************ python,go,nodejs,web调试器 ****************************
" " Vim-EasyDebugger 快捷键配置
" " 启动 NodeJS/Python/Go 调试
 nmap <F5>  <Plug>EasyDebuggerInspect
" " 启动 NodeJS 的 Web 调试模式
 nmap <F5>w  <Plug>EasyDebuggerWebInspect
" " 关闭调试
 nmap <F4>  <Plug>EasyDebuggerExit
" " 暂停程序
 nmap <capslock>dbstop   <Plug>EasyDebuggerPause
 tmap <capslock>dbstop   <Plug>EasyDebuggerPause
" " 跳出函数
 nmap <capslock>dbso   <Plug>EasyDebuggerStepOut
 tmap <capslock>dbso   <Plug>EasyDebuggerStepOut
" " 进入函数
 nmap <capslock>dbsi   <Plug>EasyDebuggerStepIn
 tmap <capslock>dbsi   <Plug>EasyDebuggerStepIn
" " 单步执行
 nmap <F10>   <Plug>EasyDebuggerNext
 tmap <F10>   <Plug>EasyDebuggerNext
" " Continue
 nmap <capslock>dbc  <Plug>EasyDebuggerContinue
 tmap <capslock>dbc  <Plug>EasyDebuggerContinue
" " 设置断点
 nmap <F9>  <Plug>EasyDebuggerSetBreakPoint
" let g:which_key_map['db'] = {
      " \ 'name' : '+python,go,nodejs,web调试器' ,
      " \ 'p' : ['<capslock>dbstop'     , '暂停程序']          ,
      " \ 'o' : ['<capslock>dbso'     , '跳出函数']         ,
      " \ 'i' : ['<capslock>dbsi'     , '进入函数']    ,
      " \ '1' : ['<F10>'     , '单步执行']    ,
      " \ 'c' : ['<capslock>dbc'     , 'Continue'] ,
      " \ '9' : ['<F9>'     , '设置断点']           ,
      " \ '6' : ['<F5>w'     , '启动 NodeJS 的 Web 调试模式']          ,
      " \ '4' : ['<F4>'     , '关闭调试']          ,
      " \ '5' : ['<F5>'     , '启动 NodeJS/Python/Go 调试']             ,
      " \ }
" "      \ '' : [''  , '']      ,

" ************ python,go,nodejs,web调试器 结束****************************



"************ 配置coc***************
lua << EOF
require('plugins.coc-nvim')
EOF
" let g:which_key_map.K = '在预览窗口中显示文档'
" 使用制表符触发完成前面的字符并导航.
" NOTE: 使用命令 ':verbose imap <tab>' 在将其放入您的配置之前，确保选项卡未被其他插件映射。
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> 自动选择第一个完成项并在输入时通知 coc.nvim 进行格式化, <cr> 可以被其他 vim 插件重新映射
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
 
" Use `[g` and `]g` 导航诊断
" Use `:CocDiagnostics`  获取位置列表中当前缓冲区的所有诊断信息
nmap <silent> <capslock>coc[g <Plug>(coc-diagnostic-prev)
nmap <silent> <capslock>coc]g <Plug>(coc-diagnostic-next)

" GoTo 代码导航.
nmap <silent> <capslock>cocgd <Plug>(coc-definition)
nmap <silent> <capslock>cocgy <Plug>(coc-type-definition)
nmap <silent> <capslock>cocgi <Plug>(coc-implementation)
nmap <silent> <capslock>cocgr <Plug>(coc-references)

" Use K 在预览窗口中显示文档.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" let g:which_key_map.K = '在预览窗口中显示文档'


" 按住光标时突出显示符号及其引用.
autocmd CursorHold * silent call CocActionAsync('highlight')

" 符号重命名.
nmap <capslock>cocrn <Plug>(coc-rename)

" 格式化所选代码.
xmap <capslock>cocf  <Plug>(coc-format-selected)
nmap <capslock>cocf  <Plug>(coc-format-selected)


" 将 codeAction 应用到选定区域.
" Example: `<leader>aap` 对于当前段落
xmap <capslock>coca  <Plug>(coc-codeaction-selected)
nmap <capslock>coca  <Plug>(coc-codeaction-selected)

" 重新映射用于将 codeAction 应用到当前缓冲区的键.
nmap <capslock>cocac  <Plug>(coc-codeaction)
" 将 AutoFix 应用到当前行上的问题.
nmap <capslock>cocqf  <Plug>(coc-fix-current)

" 映射函数和类文本对象
" NOTE: Requires 'textDocument.documentSymbol' 来自语言服务器的支持.
xmap <capslock>cocif <Plug>(coc-funcobj-i)
omap <capslock>cocif <Plug>(coc-funcobj-i)
xmap <capslock>cocaf <Plug>(coc-funcobj-a)
omap <capslock>cocaf <Plug>(coc-funcobj-a)
xmap <capslock>cocic <Plug>(coc-classobj-i)
omap <capslock>cocic <Plug>(coc-classobj-i)
xmap <capslock>cocac <Plug>(coc-classobj-a)
omap <capslock>cocac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> 用于滚动浮动窗口/弹出窗口.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S 对于选择范围.
" Requires 'textDocument/selectionRange' 支持语言服务器.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" coclist 的映射
" 显示所有诊断.
nnoremap <silent><nowait> <capslock>coca  :<C-u>CocList diagnostics<cr>
" 管理扩展。
nnoremap <silent><nowait> <capslock>coce  :<C-u>CocList extensions<cr>
" 显示命令.
nnoremap <silent><nowait> <capslock>cocc  :<C-u>CocList commands<cr>
" 查找当前文档的符号.Use `[g` 向上导航诊断
nnoremap <silent><nowait> <capslock>coco  :<C-u>CocList outline<cr>
" 搜索工作区符号.
nnoremap <silent><nowait> <capslock>cocs  :<C-u>CocList -I symbols<cr>
" 对下一项执行默认操作.
nnoremap <silent><nowait> <capslock>cocj  :<C-u>CocNext<CR>
" 对上一项执行默认操作.
nnoremap <silent><nowait> <capslock>cock  :<C-u>CocPrev<CR>
" 恢复最新的 coc 列表。
nnoremap <silent><nowait> <capslock>cocp  :<C-u>CocListResume<CR>

let g:lmap.coc = {
				\'name' : 'Coc.nvim',
                \'n' : ['call feedkeys("\<Plug>(coc-rename)")',  '重命名'],
                \'[' : ['call feedkeys("\<Plug>(coc-diagnostic-prev)")',  'Use `[g` 向上导航诊断'],
                \'e' : ['CocList extensions',  '管理扩展'],
                \}
                " \'' : ['',  ''],

" let g:which_key_map['c'] = {
      " \ 'name' : '+COC插件' ,
      " \ 'n' : ['<capslock>cocrn'     , '符合重名']          ,
      " \ '[' : ['<capslock>coc[g'  , 'Use `[g` 向上导航诊断']      ,
      " \ ']' : ['<capslock>coc]g'  , 'Use `]g` 向下导航诊断']      ,
      " \ 'f' : ['<capslock>cocf'  , '格式化所选代码']      ,
      " \ 'a' : ['<capslock>coca'  , '将 codeAction 应用到选定区域']      ,
      " \ 'c' : ['<capslock>cocac'  , '重新映射用于将 codeAction 应用到当前缓冲区的键']      ,
      " \ 'y' : ['<capslock>cocqf'  , '将 AutoFix 应用到当前行上的问题']      ,
      " \ 'l' : ['<capslock>coca'  , '显示所有诊断']      ,
      " \ 'e' : ['<capslock>coce'  , '管理扩展']      ,
      " \ 'm' : ['<capslock>cocc'  , '显示命令']      ,
      " \ 'o' : ['<capslock>coco'  , '查找当前文档的符号']      ,
      " \ 's' : ['<capslock>cocs'  , '搜索工作区符号']      ,
      " \ 'p' : ['<capslock>cocp'  , '恢复最新的 coc 列表']      ,
      " \ 'j' : ['<capslock>cocj'  , '对下一项执行默认操作']      ,
      " \ 'k' : ['<capslock>cock'  , '对上一项执行默认操作']      ,
      " \ }
" "      \ '' : [''  , '']      ,


"************ 配置coc 结束***************


"====== calendar.vim 日历插件设置 开始===========
" let g:calendar_frame = 'default'
"Google 日历集成
" let g:calendar_google_calendar = 1
" let g:calendar_google_task = 1
"

"====== calendar.vim 日历插件设置 结束===========


" ====== barbar.nvim 标签 Buffers 配置 开始 =================



" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>

" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
let g:lmap.bb = {
				\'name' : 'Buffer',
                \'h' : ['BufferPrevious',  '上一个buffer'],
                \'l' : ['BufferNext',  '下一个buffer'],
                \'c' : ['BufferClose',  '删除buffer'],
				\'p' : ['BufferPick', '快速跳转'],
                \}




" ====== barbar.nvim 标签 Buffers 配置 结束 =================

" ============== 配置 命令行提示 Wilder.nvim 开始=================
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


" ============== 配置 命令行提示 Wilder.nvim 开始=================

" ======= 配置 光标快速移动 hop.nvim 开始===========
lua << EOF
require'hop'.setup()
EOF
" 单个字符
nnoremap <Leader><Space> :HopChar1<CR>
vnoremap <Leader><Space> :HopChar1<CR>
" 单词开头
" ======= 配置 光标快速移动 hop.nvim 结束===========

" ==========  配置撤销记录 Undotree.vim 开始 ================== 
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

" ==========  配置撤销记录 Undotree.vim 结束 ================== 
""""""""""""""""""""""""""""""""""""""""""""""""

"" =================================
" == 自定义函数
"<f5> 编译和运行C
" let g:which_key_map.5 = 'c,py,cpp编译运行'
" map <Leader>5 :call CompileRunClang()<CR>
let g:lmap.5 = ['call CompileRunClang()', '编译运行文件']
func! CompileRunClang()
		exec "w"
		if &filetype == 'c'
				exec '!clang % -o %<'
				exec '!./%<'
				exec '!rm %<'
		elseif &filetype == 'cpp'
				exec '!g++ % -o %<'
				exec '!./%<'
				exec '!rm %<'
		elseif &filetype == 'python'
				exec '!python %'
	    elseif &filetype == 'html'
				exec '!http-server'

		endif
endfunc

" let g:which_key_map.sdcc = 'sdcc 编译并运行'
" map <Leader>sdcc :call CompileRunSdcc()<CR>
let g:lmap.sdcc = ['call CompileRunSdcc()', 'Sdcc']
func! CompileRunSdcc()
		exec "w"
		exec "!sdcc %"
		exec "!packihx %:t:r.ihx > %:t:r.hex"
		exec "!rm *.asm *.lst *.mem *.rst *.lk *.map *.rel *.sym"
		exec "!sudo stcgal -p /dev/ttyUSB0 -P stc89 %:t:r.hex"
endfunc

" let g:which_key_map.git = 'git 自动保存 并上传'
" map <Leader>git :call CompileRunGit()<CR>
let g:lmap.git = ['call CompileRunGit()', 'git 自动保存 并上传']
func! CompileRunGit()
		exec "w"
		exec "!git status"
		exec "!git add ."
		exec "!git commit -m 登上顶点吧！"
		exec "!git push"
endfunc

" ======== Vim 映射按键 开始======================
nnoremap ; :
nnoremap qq :q<CR>
" nnoremap <TAB><TAB> zfj
" nnoremap <TAB><TAB><TAB> zR
" nnoremap <TAB><TAB><TAB><TAB> zM
inoremap jk <ESC>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
inoremap <C-v> <ESC>pa

" ======== Vim 映射按键 结束 ======================


" ====== Markdown 写作输入 开始 ================
lua << EOF
require('autocmd-markdown')
EOF
" ====== Markdown 写作输入 结束 =============== 




" ============ 配置 Telescope.nvim 开始 ====================

" Find files using Telescope command-line sugar.
nnoremap <capslock>Telescopefind_files <cmd>Telescope find_files<cr>
nnoremap <capslock>Telescopelive_grep <cmd>Telescope live_grep<cr>
nnoremap <capslock>Telescopebuffers <cmd>Telescope buffers<cr>
nnoremap <capslock>Telescopehelp_tags <cmd>Telescope help_tags<cr>
" let g:which_key_map['tele'] = {
	 " \ 'name' : '+ Telescope' ,
	 " \ 'f' : ['<capslock>Telescopefind_files'     , '查找文件']          ,
	 " \ 'b' : ['<capslock>Telescopebuffers'     , '查找Buffers']         ,
	 " \ 't' : ['<capslock>Telescopehelp_tags'     , '查找帮助标签help_tags']    ,
	 " \ 'g' : ['<capslock>Telescopelive_grep'     , 'live_grep']    ,
	 " \ 'e' : ['<capslock>TelescopeEmoji'  , '表情符号，选了后粘贴']      ,
	 " \ }
   "   " \ '' : ['<>'  , '']      ,

let g:lmap.t = {
				\'name' : 'Telescope',
				\'ff' : ['Telescope find_files', 'File'],
				\'bf' : ['Telescope buffers', 'Buffer'],
				\'em' : ['Telescope emoji', 'Emoji'],
                \}
				" \'' : ['', ''],


" ============ 配置 Telescope.nvim 结束 ====================

" ============ 配置 telescope-emoji.nvim 开始 ==============
lua << EOF
require("telescope").load_extension("emoji")
require("telescope-emoji").setup({
  action = function(emoji)
    -- argument emoji is a table.
    -- {name="", value="", cagegory="", description=""}
    vim.fn.setreg("*", emoji.value)
    print([[Press p or "*p to paste this emoji]] .. emoji.value)
  end,
})
EOF

nnoremap <capslock>TelescopeEmoji :Telescope emoji<CR>


" ============ 配置 telescope-emoji.nvim 结束 ==============

lua << EOF
-- 插件 telescope-heading.nvim 文件查找标题
require('telescope').load_extension('heading')
EOF





" ============ 配置 indent-blankline.nvim 开始 ==============
lua << EOF
require('plugins.indent-blankline-nvim')
EOF
" ============ 配置 indent-blankline.nvim 结束 ==============


" ============ 配置 vim-bookmarks 开始 ====================
" 在当前文件目录自动添加书签备份文件 .vim-bookmarks 下次打开还能看见的必须要有 注释
" let g:bookmark_save_per_working_dir = 1
" let g:bookmark_auto_save = 1
" 添加/删除书签
nnoremap <capslock>BookmarkToogle :BookmarkToggle<CR>
" nnoremap <Leader>bmm :BookmarkToggle<CR>
" 跳转到下一个书签
nnoremap <capslock>BookmarkNext :BookmarkNext<CR>
" nnoremap <Leader>bmj :BookmarkNext<CR>
" 跳转到上一个书签
nnoremap <capslock>BookmarkPrev :BookmarkPrev<CR>
" nnoremap <Leader>bmk :BookmarkPrev<CR>
" 查看所有文件书签
nnoremap <capslock>BookmarkShowAll :BookmarkShowAll<CR>
" nnoremap <Leader>bms :BookmarkShowAll<CR>
" 书签添加注释
nnoremap <capslock>BookmarkAnnotate :BookmarkAnnotate<CR>
" nnoremap <Leader>bma :BookmarkAnnotate<CR>
" 删除当前文件的所有书签
nnoremap <capslock>BookmarkClear :BookmarkClear<CR>
" nnoremap <Leader>bmc :BookmarkClear<CR>

" 删除所有文件的所有书签
nnoremap <capslock>BookmarkClearAll :BookmarkClearAll<CR>
" nnoremap <Leader>bmC :BookmarkClearAll<CR>

nnoremap <capslock>BookmarkMoveUp <Plug>BookmarkMoveUp
nnoremap <capslock>BookmarkMoveDown <Plug>BookmarkMoveDown
nnoremap <capslock>BookmarkMoveToLine <Plug>BookmarkMoveToLine
let g:lmap.bm = {
				\'name' : '书签',
                \'m' : ['BookmarkToggle',  '添加/删除书签'],
                \'s' : ['BookmarkShowAll',  '查看书签'],
                \'a' : ['BookmarkAnnotate',  '注释书签'],
                \'c' : ['BookmarkClear',  '删除当前文件所有书签'],
                \'C' : ['BookmarkClearAll',  '删除所有文件书签'],
                \'j' : ['BookmarkNext',  '跳转到下一个书签'],
                \'k' : ['BookmarkPrev',  '跳转到上一个书签'],
                \'g' : ['BookmarkMoveToLine',  '将当前行移动到另一行的书签'],
                \'n' : ['BookmarkMoveUp',  'Move up bookmark at current line'],
                \'p' : ['BookmarkMoveDown',  'Move down bookmark at current line'],
                \}

let g:which_key_map['m'] = {
	 \ 'name' : '+ 书签，文件位置' ,
	 \ 'm' : ['<capslock>BookmarkToogle'     , '添加/删除 书签']          ,
	 \ 'i' : ['<capslock>BookmarkAnnotate'     , '注释/修改/删除 书签']         ,
	 \ 'n' : ['<capslock>BookmarkNext'     , '跳到下一个书签']    ,
	 \ 'p' : ['<capslock>BookmarkPrev'     , '跳到上一个书签位置']    ,
	 \ 'a' : ['<capslock>BookmarkShowAll'     , '查看所有书签'] ,
	 \ 'c' : ['<capslock>BookmarkClear'     , '删除本文件的所有书签']           ,
	 \ 'x' : ['<capslock>BookmarkClearAll'     , '清除所有文件的书签']          ,
	 \ 'k' : ['<capslock>BookmarkMoveUp'     , 'Move up bookmark at current line']          ,
	 \ 'j' : ['<capslock>BookmarkMoveDown'     , 'Move down bookmark at current line']             ,
	 \ 'g' : ['<capslock>BookmarkMoveToLine'    , '将当前行移动到另一行的书签']    ,
	 \ }
   " "   " \ '' : ['<>'  , '']   ,

"============ 配置 vim-bookmarks 结束 ====================


"============ 配置 nvim-neorg/neorg 开始 ====================
" lua << EOF
"     require('neorg').setup {
"         -- Tell Neorg what modules to load
"         load = {
"             ["core.defaults"] = {}, -- Load all the default modules
"             ["core.norg.concealer"] = {}, -- Allows for use of icons
"             ["core.keybinds"] = { -- Configure core.keybinds
"                     config = {
"                         default_keybinds = true, -- Generate the default keybinds
" --                        neorg_leader = "<Leader>," -- This is the default if unspecified
"                     }
"                 },
"             ["core.norg.dirman"] = { -- Manage your directories with Neorg
"                 config = {
"                     workspaces = {
"                         my_workspace = "~/MyFile/Org"
"                     }
"                 }
"             }
"         },
"     }
" EOF
"============ 配置 nvim-neorg/neorg 结束 ====================

"============ 配置 nvim-treesitter/nvim-treesitter 开始 ====================
lua << EOF
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
	install_info = {
		url = "https://github.com/nvim-neorg/tree-sitter-norg",
		files = { "src/parser.c", "src/scanner.cc" },
		branch = "main"
	},
}

parser_configs.norg_meta = {
	install_info = {
		url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
		files = { "src/parser.c" },
		branch = "main"
	},
}

parser_configs.norg_table = {
	install_info = {
		url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
		files = { "src/parser.c" },
		branch = "main"
	},
}

require('nvim-treesitter.configs').setup {
	ensure_installed = { "norg", "norg_meta", "norg_table", "markdown"},
	highlight = { -- Be sure to enable highlights if you haven't!
		enable = true,
	}
}
EOF

"============ 配置 nvim-treesitter/nvim-treesitter 结束 ====================


"============ 配置 neovim 对加密文件的支持 开始====================
lua << EOF
-- require('encrypt-file')
EOF
"============ 配置 neovim 对加密文件的支持 开始====================



if has('win32') "macunix unix win32
   " nnoremap <Leader>mdf :e F:\\Hugo\\content\\posts\\Home.md<CR>
   let g:lmap.mdf = ['e F:\\Hugo\\content\\posts\\Home.md', 'Hugo文件']
endif
if has('unix') "macunix unix win32
   " nnoremap <Leader>mdf :e ~/Ubuntu/ubuntu-fs/root/Hugo/content/posts/Home.md<CR>
   let g:lmap.mdf = ['e ~/Ubuntu/ubuntu-fs/root/Hugo/content/posts/Home.md', 'Hugo文件']
endif
if has('macunix') "macunix unix win32
   " nnoremap <Leader>mdf :e ~Hugo/content/posts/Home.md<CR>
   let g:lmap.mdf = ['e ~/Desktop/Hugo/content/posts/Home.md', 'Hugo文件']
endif

if has('unix') "macunix unix win32
   command! Myconfig :e ~/.config/nvim/init.vim
endif
if has('win32') "macunix unix win32
   command! Myconfig :e C:\Users\Jack\AppData\Local\nvim\init.vim 
endif
if has('macunix') "macunix unix win32
   command! Myconfig :e ~/.config/nvim/init.vim
endif

call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
lua << EOF
require('basic')
EOF

