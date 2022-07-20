"if has('win32') "macunix unix win32
"    echo "这是Windows 配置"
"endif
call plug#begin('~/.config/nvim/plugged')
if has('win32') "macunix unix win32
    call plug#begin('C:\\Users\\Jack\\AppData\\Local\\nvim\\plugged')
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 语言导航
Plug "nvim-treesitter/nvim-treesitter"
Plug "SmiteshP/nvim-gps"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 居中模式
Plug 'junegunn/goyo.vim'
" 佛系模式
Plug 'folke/zen-mode.nvim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neorg
Plug 'nvim-neorg/neorg'
Plug 'nvim-lua/plenary.nvim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
Plug 'vimwiki/vimwiki'
Plug 'vitalk/vim-simple-todo'
" Markdown , Org-mode , vinwiki ,norg 代码块运行后返回值
" Plug 'jubnzv/mdeval.nvim'
Plug 'iamcco/markdown-preview.nvim'
Plug 'plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 寄存器, 剪贴板
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 终端
Plug 'akinsho/toggleterm.nvim',{'on': 'Registers'}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Github 补全
Plug 'github/copilot.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 键绑定
" Plug 'hecal3/vim-leader-guide'
" Plug 'liuchengxu/vim-which-key'
Plug 'anuvyklack/hydra.nvim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 加密和解密文件
Plug 'jamessan/vim-gnupg'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 启动插件
Plug 'dstein64/vim-startuptime',{'on': 'StartupTime'} " 测试启动时间 使用命令 StartupTime
Plug 'mhinz/vim-startify' " vim打开最近打开的文件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 书签
Plug 'MattesGroeger/vim-bookmarks' " 书签
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 指导线
Plug 'lukas-reineke/indent-blankline.nvim' " 指导线
Plug 'nathanaelkane/vim-indent-guides' "缩进线，与上面的指导线插件可以二选一,因为这个插件似乎没有用
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Telescope 众包
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' " 搜索
" Plug 'LinArcX/telescope-command-palette.nvim' " 函数提示
Plug 'xiyaowong/telescope-emoji.nvim',{'on': 'Telescope emoji'} " 基于 Telescope 的表情符号
Plug 'crispgm/telescope-heading.nvim',{'on': 'Telescope heading'} " 文件标题查找
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 命令/搜索提示
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' } " 命令行提示 与 pynvim 冲突, /搜索用不了
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer 标签栏
Plug 'kyazdani42/nvim-web-devicons' " 图标依赖
Plug 'romgrk/barbar.nvim'
" Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'vim-airline/vim-airline' " 状态栏美化
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 中文输入法
Plug 'ISouthRain/ZFVimIM'
Plug 'ISouthRain/ZFVimJob' " 可选, 用于提升词库加载性能
Plug 'ISouthRain/ZFVimIM_openapi' "云词库
Plug 'ISouthRain/ZFVimIM_pinyin' "db文件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件浏览器
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeFind' }
Plug 'ryanoasis/vim-devicons' "文件类型图标
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 翻译插件
Plug 'voldikss/vim-translator'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 计算机语言
" Plug 'puremourning/vimspector' " 语言调试器
" Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocInstall coc-json coc-tsserver coc-pyright coc-html'} "补全插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 其余插件
Plug 'jiangmiao/auto-pairs' " 符号补全
Plug 'luochen1990/rainbow' " 括号不同颜色
Plug 'mbbill/undotree' "更改历史
Plug 'lfv89/vim-interestingwords' " 高亮搜索文本不同颜色
Plug 'itchyny/calendar.vim' " 日历
" Plug 'mg979/vim-visual-multi', {'branch': 'master'} "块代码编辑
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 注释代码
Plug 'preservim/nerdcommenter', {'on': '<Plug>NERDCommenterToggle'}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 字符对齐
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 光标快速移动
Plug 'phaazon/hop.nvim'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基础设置
lua require('core.basic')
lua require('core.function')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-colors-solarized 'dracula/vim' vim-airline vim-devicons nvim-web-devicons
lua require('core.ui')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ZFVimIM ZFVimJob ZFVimIM_openapi ZFVimIM_pinyin 中文输入法
lua require('core.ZFVimIM')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-gnupg registers.nvim nerdcommenter undotree rainbow auto-pairs indent-blankline.nvim vim-indent-guides vim-translator
lua require('core.edit')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree hop.nvim wilder.nvim vim-interestingwords
lua require('core.navigation')
lua << EOF
require'hop'.setup()
EOF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Telescope telescope-emoji
lua require('core.telescope')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggleterm.nvim 终端
" lua require('core.toggleterm')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" markdown-preview vimwiki telescope-heading.nvim
lua require('core.markdown')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neorg
" lua require('core.neorg')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 写代码
lua require('core.language')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" hydra 键绑定
lua require('core.hydra')
