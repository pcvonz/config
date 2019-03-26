""""""""""""
"The Basics"
""""""""""""

set tabstop=2 shiftwidth=2
set expandtab
set softtabstop=0 smarttab
set number
set mouse=a
set nocompatible
set smartcase
colo gruvbox
set background=dark
filetype plugin on       " may already be in your .vimrc

"""""""""""""""""
"Filetype config"
"""""""""""""""""

autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

"""""
"NVR"
"""""

" If in an nvim terminal and trying to open a file
" Open it in an nvim split via nvr
if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

"""""""""""""""""
"Persistant undo"
"""""""""""""""""
set undofile
set undodir=~/.config/nvim/undodir

augroup vimrc
  autocmd BufWritePre /tmp/* setlocal noundofile
augroup END

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/home/paul/Programs/pyvenv/venv/bin/python'

