call plug#begin('~/.vim/autoload/plugged')
Plug 'https://github.com/steelsojka/deoplete-flow.git'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
" Linting
Plug 'https://github.com/w0rp/ale.git'
" Plug 'https://github.com/vim-airline/vim-airline.git' " Setting status messages in a line
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
Plug 'https://github.com/dahu/vim-help'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'https://github.com/mattn/vim-mastodon.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/wlangstroth/vim-racket.git'
Plug 'https://github.com/junegunn/vim-easy-align.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-eunuch.git'
Plug 'https://github.com/tpope/vim-repeat.git'
call plug#end()

set nocompatible
set smartcase
filetype plugin on       " may already be in your .vimrc

" Some custom inputs

nmap <C-x> :bd <CR>

" Initiate deoplete
" let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
let g:python_host_prog = '/usr/bin/python3'

let g:ale_fixers = {
\ 'javascript': ['eslint'],
\ 'typescript': ['tslint', 'eslint'],
\}

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_completion_enabled = 1

nnoremap <leader>gf :ALEGoToDefinition<cr>

" Ale bindings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <C-f> <Plug>(ale_fix)
" let g:airline#extensions#ale#enabled = 1

" Ale lint vue
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.vue set filetype=javascript.vue
augroup END

" let g:ale_linters = {'vue': ['stylelint', 'eslint']}
" let g:ale_linter_aliases = {'vue': 'css'}

colo seoul256

set background=dark

set tabstop=2 shiftwidth=2
set expandtab
set softtabstop=0 smarttab
set number
autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
set mouse=a

" Airline
" let g:airline#extensions#tabline#enabled = 0



set background=dark
set t_Co=256
" let g:airline_section_x       = ""
" let g:airline_section_y       = ""

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
nnoremap <leader>r :<C-u>Unite file_rec/neovim<CR>
" Search for a file in the current directory
nnoremap <leader>f :<C-u>Unite file<CR>
" Open recently used files
nnoremap <silent> <leader>b :<C-u>Unite buffer bookmark<CR>
nnoremap <leader>g :<C-u>Unite grep<CR>

" Persistant undo
set undofile
set undodir=~/.config/nvim/undodir

augroup vimrc
  autocmd BufWritePre /tmp/* setlocal noundofile
augroup END

" Buf only!
" BufOnly.vim  -  Delete all the buffers except the current/named buffer.
"
" Copyright November 2003 by Christian J. Robinson <infynity@onewest.net>
"
" Distributed under the terms of the Vim license.  See ":help license".
"
" Usage:
"
" :Bonly / :BOnly / :Bufonly / :BufOnly [buffer] 
"
" Without any arguments the current buffer is kept.  With an argument the
" buffer name/number supplied is kept.

command! -nargs=? -complete=buffer -bang Bonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BOnly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang Bufonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BufOnly
    \ :call BufOnly('<args>', '<bang>')

function! BufOnly(buffer, bang)
	if a:buffer == ''
		" No buffer provided, use the current buffer.
		let buffer = bufnr('%')
	elseif (a:buffer + 0) > 0
		" A buffer number was provided.
		let buffer = bufnr(a:buffer + 0)
	else
		" A buffer name was provided.
		let buffer = bufnr(a:buffer)
	endif

	if buffer == -1
		echohl ErrorMsg
		echomsg "No matching buffer for" a:buffer
		echohl None
		return
	endif

	let last_buffer = bufnr('$')

	let delete_count = 0
	let n = 1
	while n <= last_buffer
		if n != buffer && buflisted(n)
			if a:bang == '' && getbufvar(n, '&modified')
				echohl ErrorMsg
				echomsg 'No write since last change for buffer'
							\ n '(add ! to override)'
				echohl None
			else
				silent exe 'bdel' . a:bang . ' ' . n
				if ! buflisted(n)
					let delete_count = delete_count+1
				endif
			endif
		endif
		let n = n+1
	endwhile

	if delete_count == 1
		echomsg delete_count "buffer deleted"
	elseif delete_count > 1
		echomsg delete_count "buffers deleted"
	endif

endfunction

" For C# Godot
let g:ale_cs_mcs_options = '-reference:/home/paul/godot_proj/.mono/assemblies/GodotSharp.dll'

let g:ale_cs_mcsc_assemblies = [
    \ '/home/paul/godot_proj/.mono/assemblies/GodotSharp.dll',
    \]

" Eeasy Align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif


