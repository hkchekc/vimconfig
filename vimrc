call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/python.vim', { 'for': 'python' }
Plug 'lervag/vimtex', { 'for': 'tex' }

"Color
Plug 'nanotech/jellybeans.vim'
Plug 'jcherven/jummidark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

call plug#end()

" Initial cursor positioning {{{
" [copied from vimrc_example.vim]
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif



" Some convenient settings
syntax on
filetype plugin indent on
filetype on
filetype plugin on
set autoindent
set showbreak=↳
set backspace=indent,eol,start

" some filetype things
let g:tex_flavor = "latex"

" Some Plugin config
let g:UltiSnipsExpandTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snip"]
