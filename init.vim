
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

" =========================================
" 寄存器, 剪贴板
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
" =========================================
" 终端
Plug 'akinsho/toggleterm.nvim'
" =========================================
" Github 补全
Plug 'github/copilot.vim'
" ================= 键绑定 =================
Plug 'hecal3/vim-leader-guide'
Plug 'liuchengxu/vim-which-key' " 键绑定
Plug 'anuvyklack/hydra.nvim'
" ========================================
" 加密和解密文件
Plug 'jamessan/vim-gnupg'

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

Plug 'vim-airline/vim-airline' " 状态栏美化


" ================= 中文输入法 =================
Plug 'ISouthRain/ZFVimIM'
Plug 'ISouthRain/ZFVimJob' " 可选, 用于提升词库加载性能
Plug 'ISouthRain/ZFVimIM_openapi' "云词库
Plug 'ISouthRain/ZFVimIM_pinyin' "db文件

" ================= 主题 =================
Plug 'altercation/vim-colors-solarized' " vim主题
Plug 'dracula/vim', { 'as': 'dracula' }


" ================= 文件浏览器 =================
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeFind' } "文件目录浏览器
Plug 'ryanoasis/vim-devicons' "文件类型图标



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





Plug 'preservim/nerdcommenter' " 注释代码

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

lua require('core.basic')
lua require('core.ui')
lua require('core.hydra')
