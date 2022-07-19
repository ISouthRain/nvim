vim.cmd([[
" 云词库支持
let g:ZFVimIM_openapi_enable=1

" 使用本地 db 的配置
function! s:zfvimim_init() abort
  let db = ZFVimIM_dbInit({'name' : '中文输入法'})
  call ZFVimIM_cloudRegister({
			  \   'mode' : 'local',
			  \   'dbId' : db['dbId'],
			  \   'repoPath' : expand('~/.config/nvim/plugged/ZFVimIM_pinyin/misc/'),
			  \   'dbFile' : 'pinyin.txt',
			  \   'dbCountFile' : 'pinyin_count.txt',
			  \ })
endfunction

augroup zfvim_conf
  autocmd!
  autocmd VimEnter * call s:zfvimim_init()
augroup END
]])
