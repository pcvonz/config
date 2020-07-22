""""""""""""""
"Ale bindings"
""""""""""""""
nnoremap <leader>gf :ALEGoToDefinition<cr>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <C-f> <Plug>(ale_fix)


"""""""""""""""""
"Denite Bindings"
"""""""""""""""""


nnoremap <leader>r :<C-u>Denite file/rec<CR><C-L>
" Search for a file in the current directory
nnoremap <leader>f :<C-u>Denite directory_rec<CR>
" Open recently used files
nnoremap <silent> <leader>b :<C-u>Denite buffer<CR>
nnoremap <leader>g :<C-u>Denite grep<CR>

""""""
"TODO"
""""""

nmap <F5> :TODOToggle<CR>

""""""
"REPL"
""""""

nmap <leader>s :%ReplSend<CR>

""""
" Format Json
""""

vnoremap <leader>j :!python -m json.tool<CR>
vnoremap <leader>r :!refmt<CR>


"""""
" Bind K to pydoc in python files
"""""
autocmd BufNewFile,BufRead *.py set keywordprg=pydoc

"""
" Make
""""

nnoremap <leader>w :make run<CR>
nnoremap <leader>cn :cn<CR>
nnoremap <leader>cp :cp<CR>

" Wiki
"
nnoremap <leader>wd :VimwikiDiaryIndex<CR>
