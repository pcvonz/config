"""""
"ALE"
"""""

let g:ale_fixers = {
\ 'javascript': ['eslint', 'prettier'],
\ 'typescript': ['tslint', 'eslint'],
\}

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 1
let g:ale_completion_enabled = 1
" Because vim loves to insert the autocompletion value...
set completeopt=menu,menuone,preview,noselect,noinsert


let g:airline#extensions#ale#enabled = 1

" Ale lint vue
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.vue set filetype=javascript.vue
augroup END

" let g:ale_linters = {'vue': ['stylelint', 'eslint']}
" let g:ale_linter_aliases = {'vue': 'css'}

" For C# Godot
let g:ale_cs_mcs_options = '-reference:/home/paul/godot_proj/.mono/assemblies/GodotSharp.dll'

let g:ale_cs_mcsc_assemblies = [
    \ '/home/paul/godot_proj/.mono/assemblies/GodotSharp.dll',
    \]



""""""""
"DENITE"
""""""""

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
        \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
        \ denite#do_map('toggle_select').'j'
endfunction

call denite#custom#var('file/rec', 'command',
      \ ['find', '-L', ':directory',
      \ '-path', '*/node_modules/*', '-prune', '-o',
      \ '-path', '*/.git/*', '-prune', '-o',
      \ '-type', 'l', '-print', '-o',
      \ '-type', 'f', '-print' ])


call denite#custom#source('grep', 'args', ['', '', '!'])

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction

"""""""""""""
"Eeasy Align"
"""""""""""""

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"""""""""
"AIRLINE"
"""""""""
let g:airline_section_x = ""
let g:airline_section_y = ""

""""""""""""""
"EDITORCONFIG"
""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*']


"""""""""""
"VIM EMOJI"
"""""""""""
set completefunc=emoji#complete

