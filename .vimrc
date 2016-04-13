call plug#begin('~/.vim/autoload/plugged')
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/plasticboy/vim-markdown.git'
Plug 'git://github.com/tpope/vim-surround.git'
Plug 'https://github.com/reedes/vim-pencil.git'
Plug 'https://github.com/vim-scripts/dokuwiki.vim.git'
Plug 'https://github.com/reedes/vim-wordy.git'
call plug#end()

set nocompatible
filetype plugin on       " may already be in your .vimrc

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init() 
  autocmd FileType markdown,mkd :set spell
  autocmd FileType text         call pencil#init()
augroup END


:set tabstop=4 shiftwidth=4 expandtab
:set number
