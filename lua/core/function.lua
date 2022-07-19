vim.cmd([[
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Myconfig
if has('unix') "macunix unix win32
   command! Myconfig :e ~/.config/nvim/init.vim
endif
if has('win32') "macunix unix win32
   command! Myconfig :e C:\Users\Jack\AppData\Local\nvim\init.vim 
endif
if has('macunix') "macunix unix win32
   command! Myconfig :e ~/.config/nvim/init.vim
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编译运行文件
" let g:lmap.5 = ['call CompileRunClang()', '编译运行文件']
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sdcc
" let g:which_key_map.sdcc = 'sdcc 编译并运行'
" map <Leader>sdcc :call CompileRunSdcc()<CR>
" let g:lmap.sdcc = ['call CompileRunSdcc()', 'Sdcc']
func! CompileRunSdcc()
		exec "w"
		exec "!sdcc %"
		exec "!packihx %:t:r.ihx > %:t:r.hex"
		exec "!rm *.asm *.lst *.mem *.rst *.lk *.map *.rel *.sym"
		exec "!sudo stcgal -p /dev/ttyUSB0 -P stc89 %:t:r.hex"
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" git
" let g:which_key_map.git = 'git 自动保存 并上传'
" map <Leader>git :call CompileRunGit()<CR>
" let g:lmap.git = ['call CompileRunGit()', 'git 自动保存 并上传']
func! CompileRunGit()
		exec "w"
		exec "!git status"
		exec "!git add ."
		exec "!git commit -m 登上顶点吧！"
		exec "!git push"
endfunc
]])