vim.cmd([[
" Set the basic sizes
let g:vimspector_sidebar_width = 80
let g:vimspector_code_minwidth = 85
let g:vimspector_terminal_minwidth = 75
"
" function! s:CustomiseUI()
"   " Customise the basic UI...
"
"   " Close the output window
"   call win_gotoid( g:vimspector_session_windows.output )
"   q
" endfunction
"
" function s:SetUpTerminal()
"   " Customise the terminal window size/position
"   " For some reasons terminal buffers in Neovim have line numbers
"   call win_gotoid( g:vimspector_session_windows.terminal )
"   set norelativenumber nonumber
" endfunction
"
" augroup MyVimspectorUICustomistaion
"   autocmd!
"   autocmd User VimspectorUICreated call s:CustomiseUI()
"   autocmd User VimspectorTerminalOpened call s:SetUpTerminal()
" augroup END
"
" nnoremap <F4> <ESC>:VimspectorReset<CR>
" "let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB'  ]
"
" function! s:read_template_into_buffer(template)
"         execute '0r ~/.config/vim/vimspector_json'.a:template
" endfunction
" command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
"             \   'source': 'ls -1 ~/.config/vim/vimspector_json',
"             \   'down': 20,
"             \   'sink': function('<sid>read_template_into_buffer')
"             \ })
" nnoremap <capslock>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
" sign define vimspectorBP text=▶ texthl=Normal
" sign define vimspectorPC text=⚡ texthl=SpellBad

]])