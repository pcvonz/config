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
Plug 'git://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/Shougo/unite.vim.git'
Plug 'git://github.com/tpope/vim-surround.git'
Plug 'https://github.com/junegunn/seoul256.vim.git'
Plug 'https://github.com/benmills/vimux.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/fholgado/minibufexpl.vim.git'
call plug#end()

set nocompatible
filetype plugin on       " may already be in your .vimrc

" Initiate deoplete
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
let g:python_host_prog = '/usr/bin/python3'

let g:ale_fixers = {
\ 'javascript': ['eslint']
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

nmap <F8> :TagbarToggle<CR>

colo seoul256

set background=dark

:set tabstop=2 shiftwidth=2
:set expandtab
:set softtabstop=0 smarttab
:set number
autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
:set mouse=a

" Nerdtree command
map <C-n> :NERDTreeToggle<CR>

" minibufexpl
map <S-z> :bNext <CR>
map <S-x> :bnext <CR>

autocmd vimenter * NERDTree
autocmd vimenter * MBEOpen
