-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'anuvyklack/hydra.nvim'
  -- ================ Markdown =================
  use 'iamcco/markdown-preview.nvim'
  use 'plasticboy/vim-markdown'
  use 'dhruvasagar/vim-table-mode'

-- ========================================
-- 寄存器, 剪贴板
  use 'tversteeg/registers.nvim'
-- ========================================
-- 终端
  use 'akinsho/toggleterm.nvim'
-- ========================================
-- Github 补全
  use 'github/copilot.vim'
-- ================ 键绑定 =================
  use 'hecal3/vim-leader-guide'
  use 'liuchengxu/vim-which-key' -- 键绑定
-- =======================================
-- 加密和解密文件
  use 'jamessan/vim-gnupg'

-- ================ 启动插件 =================
  use 'dstein64/vim-startuptime' -- 测试启动时间 使用命令 StartupTime
  use 'mhinz/vim-startify' -- vim打开最近打开的文件

  use 'nvim-neorg/neorg'
  use 'nvim-treesitter/nvim-treesitter'  -- We recommend updating the parsers on update


-- ================ 书签 =================
  use 'MattesGroeger/vim-bookmarks' -- 书签

-- ================ 指导线 =================
  use 'lukas-reineke/indent-blankline.nvim' -- 指导线
  use 'nathanaelkane/vim-indent-guides' -- 缩进线，与上面的指导线插件可以二选一,因为这个插件似乎没有用

-- ================ Telecope 众包 =================
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim' -- 搜索
  use 'LinArcX/telescope-command-palette.nvim' -- 函数提示
  use 'xiyaowong/telescope-emoji.nvim' -- 基于 Telescope 的表情符号
  use 'crispgm/telescope-heading.nvim' -- 文件标题查找

-- ================ 命令/搜索提示 =================
  use 'gelguy/wilder.nvim' -- 命令行提示 与 pynvim 冲突, /搜索用不了

-- ================ Buffer 标签栏 =================
  use 'kyazdani42/nvim-web-devicons' -- 图标依赖
  use 'romgrk/barbar.nvim'
--   use 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

  use 'vim-airline/vim-airline' -- 状态栏美化


-- ================ 中文输入法 =================
  use 'ISouthRain/ZFVimIM'
  use 'ISouthRain/ZFVimJob' -- 可选, 用于提升词库加载性能
  use 'ISouthRain/ZFVimIM_openapi' -- 云词库
  use 'ISouthRain/ZFVimIM_pinyin' -- db文件

-- ================ 主题 =================
  use 'altercation/vim-colors-solarized' -- vim主题
  use 'dracula/vim'


-- ================ 文件浏览器 =================
  use 'scrooloose/nerdtree' -- 文件目录浏览器
  use 'ryanoasis/vim-devicons' -- 文件类型图标



-- ================ 翻译插件 =================
  use 'voldikss/vim-translator' -- 翻译插件



-- ================ 计算机语言 =================
--   use 'puremourning/vimspector' " 语言调试器
--   use 'neoclide/coc.nvim' -- 补全插件

-- ================ 其余插件 =================
  use 'jiangmiao/auto-pairs' -- 符号补全
  use 'luochen1990/rainbow' -- 括号不同颜色
  use 'mbbill/undotree' -- 更改历史
  use 'lfv89/vim-interestingwords' -- 高亮搜索文本不同颜色 
  use 'itchyny/calendar.vim' -- 日历
--   use 'mg979/vim-visual-multi', {'branch': 'master'} "块代码编辑





  use 'preservim/nerdcommenter' -- 注释代码






-- ================ Markdown =================
  use 'vimwiki/vimwiki' -- 个人wiki
  use 'vitalk/vim-simple-todo' -- TODO 
-- Markdown , Org-mode , vinwiki ,norg 代码块运行后返回值
--  use 'jubnzv/mdeval.nvim'

-- ================ 字符对齐 =================
  use 'junegunn/vim-easy-align' -- 字符对齐
  use 'godlygeek/tabular' -- 字符对齐


-- ================ 光标快速移动 =================
  use 'phaazon/hop.nvim'




end)
