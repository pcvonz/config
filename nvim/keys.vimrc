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
