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

call denite#custom#source(
\ 'file_mru', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])

call denite#custom#map(
      \ 'insert',
      \ '<C-j>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-k>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)

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
