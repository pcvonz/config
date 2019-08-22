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
Plug 'calviken/vim-gdscript3'
Plug 'reedes/vim-pencil' " Super-powered writing things
Plug 'tpope/vim-abolish' " Fancy abbreviation replacements
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim' " Full screen writing mode
Plug 'reedes/vim-lexical' " Better spellcheck mappings
Plug 'reedes/vim-litecorrect' " Better autocorrections
Plug 'reedes/vim-textobj-sentence' " Treat sentences as text objects
Plug 'reedes/vim-wordy' " Weasel words and passive voice
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"" Color schemes
Plug 'https://github.com/morhetz/gruvbox.git'
" Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'tikhomirov/vim-glsl'
Plug 'https://github.com/rust-lang/rust.vim.git'
Plug 'https://github.com/neomake/neomake.git'
Plug 'https://github.com/rhysd/vim-grammarous'
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/mtikekar/nvim-send-to-term.git'
call plug#end()

let g:python3_host_prog = '/home/paul/config/env/bin/python'

source ~/config/nvim/keys.vimrc
source ~/config/nvim/bufonly.vimrc
source ~/config/nvim/general.vimrc
source ~/config/nvim/plugins.vimrc

augroup pencil
 autocmd!
 autocmd filetype markdown,mkd call pencil#init()
     \ | call lexical#init()
     \ | call litecorrect#init()
     \ | setl spell spl=en_us fdl=4 noru nonu nornu
     \ | setl fdo+=search
augroup END

" Pencil / Writing Controls {{{
 let g:pencil#wrapModeDefault = 'soft'
 let g:pencil#textwidth = 74
 let g:pencil#joinspaces = 0
 let g:pencil#cursorwrap = 1
 let g:pencil#conceallevel = 3
 let g:pencil#concealcursor = 'c'
 let g:pencil#softDetectSample = 20
 let g:pencil#softDetectThreshold = 130
" }}}
