call plug#begin('~/.vim/autoload/plugged')
Plug 'https://github.com/Shougo/unite.vim.git'
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/plasticboy/vim-markdown.git'
Plug 'git://github.com/tpope/vim-surround.git'
Plug 'https://github.com/reedes/vim-pencil.git'
Plug 'https://github.com/vim-scripts/dokuwiki.vim.git'
Plug 'https://github.com/reedes/vim-wordy.git'
Plug 'https://github.com/reedes/vim-textobj-quote.git'
Plug 'https://github.com/kana/vim-textobj-user.git'
Plug 'https://github.com/Shougo/vimfiler.vim.git'
Plug 'https://github.com/junegunn/limelight.vim.git'
Plug 'https://github.com/junegunn/seoul256.vim.git'
Plug 'https://github.com/benmills/vimux.git'
call plug#end()

set nocompatible
filetype plugin on       " may already be in your .vimrc

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init() 
  autocmd FileType markdown,mkd :set spell
  autocmd FileType text         call pencil#init()
augroup END


colo seoul256

set background=dark

:set tabstop=4 shiftwidth=4 expandtab
:set number
