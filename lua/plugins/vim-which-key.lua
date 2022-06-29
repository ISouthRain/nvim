vim.cmd([[
let g:mapleader = "\<Space>"
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=400
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
let g:which_key_map =  {}
call which_key#register('<Space>', "g:which_key_map")
let g:which_key_map['w'] = {
      \ 'name' : '+窗口管理' ,
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

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

]])
