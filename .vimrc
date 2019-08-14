call plug#begin('~/.vim/autoload/plugged')
" Plug 'https://github.com/steelsojka/deoplete-flow.git'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Linting
Plug 'https://github.com/chiedo/vim-sort-blocks-by.git'
Plug 'https://github.com/w0rp/ale.git'
Plug 'editorconfig/editorconfig-vim'
Plug 'https://github.com/vim-airline/vim-airline.git' " Setting status messages in a line
" Stuff for web design
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/junegunn/seoul256.vim.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'mxw/vim-jsx'
Plug 'https://github.com/mhinz/vim-signify.git'
Plug 'shougo/denite.nvim' 
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/ap/vim-css-color.git'
" Plug 'https://github.com/joonty/vdebug.git'
Plug 'https://github.com/dahu/vim-help'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'https://github.com/wlangstroth/vim-racket.git'
Plug 'https://github.com/junegunn/vim-easy-align.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-eunuch.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'junegunn/vim-emoji'
Plug 'https://github.com/Dimercel/todo-vim.git'

"" Color schemes
Plug 'https://github.com/morhetz/gruvbox.git'
call plug#end()

source ~/config/nvim/keys.vimrc
source ~/config/nvim/bufonly.vimrc
source ~/config/nvim/general.vimrc
source ~/config/nvim/plugins.vimrc
