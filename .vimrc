call plug#begin('~/.vim/autoload/plugged')
" Plug 'Olical/aniseed', { 'tag': 'v3.22.1' }
" Plug 'Olical/conjure', {'tag': 'v4.24.1'}
" Plug 'https://github.com/w0rp/ale.git'
Plug 'editorconfig/editorconfig-vim'
Plug 'https://github.com/vim-airline/vim-airline.git' " Setting status messages in a line
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/junegunn/seoul256.vim.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'mxw/vim-jsx'
Plug 'https://github.com/mhinz/vim-signify.git'
Plug 'shougo/denite.nvim' 
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-eunuch.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'junegunn/vim-emoji'
Plug 'calviken/vim-gdscript3'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/rust-lang/rust.vim.git'
Plug 'https://github.com/neomake/neomake.git'
Plug 'https://github.com/rhysd/vim-grammarous'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'
Plug 'psliwka/vim-smoothie'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'bakpakin/fennel.vim'
Plug 'sheerun/vim-polyglot'
Plug 'beeender/Comrade'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'rescript-lang/vim-rescript'
Plug 'habamax/vim-godot'
Plug 'David-Kunz/jester'
Plug 'mfussenegger/nvim-dap'
call plug#end()

let g:python3_host_prog = '/usr/bin/python3'

source ~/config/nvim/keys.vimrc
source ~/config/nvim/bufonly.vimrc
source ~/config/nvim/general.vimrc
source ~/config/nvim/plugins.vimrc

augroup pencil
  autocmd!
  autocmd filetype markdown,mkd,vimwiki call pencil#init()
        \ | call lexical#init()
        \ | call litecorrect#init()
        \ | setl spell spl=en_us fdl=4 noru nonu nornu
        \ | setl fdo+=search
augroup END

set guifont=Fira\ Code:h14
let g:neovide_cursor_vfx_mode = "wireframe"
set tgc
set dictionary=/usr/share/dict/cracklib-small
let g:slime_target = "neovim"
autocmd BufNew,BufEnter *.java execute "call deoplete#enable() | !silent CocDisable"
autocmd BufLeave *.cs execute "call deoplete#disable() | !silent CocEnable"

let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }

au BufRead,BufNewFile *.jsx set filetype=javascriptreact
au BufRead,BufNewFile *.tsx set filetype=typescriptreact

nnoremap <C-@> :call system("wl-clipboard", @")<CR>

nnoremap <leader>vr :source ~/config/.vimrc<enter>
nnoremap <leader>ve :e ~/config/.vimrc<enter>

set scrolloff=8 " Keep 3 lines below and above the cursor
let g:neovide_cursor_vfx_mode = "railgun"
