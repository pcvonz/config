call plug#begin('~/.vim/autoload/plugged')
Plug 'https://github.com/steelsojka/deoplete-flow.git'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
" Linting
Plug 'https://github.com/w0rp/ale.git'
Plug 'https://github.com/vim-airline/vim-airline.git' " Setting status messages in a line
" Stuff for web design
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/Shougo/unite.vim.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/junegunn/seoul256.vim.git'
Plug 'https://github.com/benmills/vimux.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/mildred/vim-bufmru.git'
Plug 'https://github.com/mhinz/vim-signify.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/Shougo/denite.nvim.git'
" Plug 'https://github.com/joonty/vdebug.git'
"
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
call plug#end()

set nocompatible
set smartcase
filetype plugin on       " may already be in your .vimrc

" Some custom inputs

nmap <C-x> :bd <CR>

" Initiate deoplete
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
let g:python_host_prog = '/usr/bin/python3'

let g:ale_fixers = {
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint'],
\}

" Flow deoplete
function! StrTrim(txt)
    return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
  endfunction

  let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

  if g:flow_path != 'flow not found'
      let g:deoplete#sources#flow#flow_bin = g:flow_path
    endif

" Ale bindings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <C-f> <Plug>(ale_fix)
let g:airline#extensions#ale#enabled = 1

" Ale lint vue
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.vue set filetype=javascript.vue
augroup END

let g:ale_linters = {'vue': ['stylelint', 'eslint']}
let g:ale_linter_aliases = {'vue': 'css'}

colo seoul256

set background=dark

set tabstop=2 shiftwidth=2
set expandtab
set softtabstop=0 smarttab
set number
autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
set mouse=a

" Airline
let g:airline#extensions#tabline#enabled = 1



set background=dark
set t_Co=256
let g:airline_section_x       = ""
let g:airline_section_y       = ""

" Bufmru (load buffers in last used order)
" Alt-B or Alt-Shift-B to navigate buffers in insert mode and normal mode
imap <A-B> <C-O>:BufMRUPrev<CR>
imap <A-b> <C-O>:BufMRUNext<CR>
map <A-B> :BufMRUPrev<CR>
map <A-b> :BufMRUNext<CR>
nmap <Esc>B :BufMRUPrev<CR>
nmap <Esc>b :BufMRUNext<CR>

" Key above escape (on french keyboards) to commit current buffer as last
" used
map ² :BufMRUCommit<CR>

" Tab and Shift-Tab in normal mode to navigate buffers
map <Tab> :BufMRUNext<CR>
map <S-Tab> :BufMRUPrev<CR>

" Options needed for ctrl+space
set hidden

" Unite options
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>r :<C-u>Unite -start-insert file_rec/async:!<CR>
" Search for a file in the current directory
nnoremap <leader>f :<C-u>Unite file<CR>
" Open recently used files
nnoremap <silent> <leader>b :<C-u>Unite buffer bookmark<CR>
nnoremap <leader>g :<C-u>Unite grep<CR>

