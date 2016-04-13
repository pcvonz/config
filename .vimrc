call plug#begin('~/.vim/autoload/plugged')
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/plasticboy/vim-markdown.git'
Plug 'git://github.com/tpope/vim-surround.git'
Plug 'https://github.com/reedes/vim-pencil.git'
Plug 'https://github.com/vim-scripts/dokuwiki.vim.git'
Plug 'https://github.com/reedes/vim-wordy.git'
Plug 'https://github.com/reedes/vim-textobj-quote.git'
Plug 'https://github.com/kana/vim-textobj-user.git'
call plug#end()

set nocompatible
filetype plugin on       " may already be in your .vimrc

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init() 
  autocmd FileType markdown,mkd :set spell
  autocmd FileType text         call pencil#init()
augroup END

augroup textobj_quote
  autocmd!
  autocmd FileType markdown call textobj#quote#init()
  autocmd FileType textile call textobj#quote#init()
  autocmd FileType text call textobj#quote#init({'educate': 0})
augroup END

:set tabstop=4 shiftwidth=4 expandtab
:set number
