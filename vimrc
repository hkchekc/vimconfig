call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/python.vim', { 'for': 'python' }
Plug 'lervag/vimtex', { 'for': 'tex' }

"Color
Plug 'NLKNguyen/papercolor-theme'
Plug 'nanotech/jellybeans.vim'
Plug 'jcherven/jummidark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

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

"runtimepath management


" Some convenient settings
syntax on
filetype plugin indent on
filetype on
filetype plugin on
set autoindent
set showbreak=↳
set backspace=indent,eol,start
set nu " Show line number
set updatetime=1500
set hidden
" some filetype things
" tex
let g:tex_flavor = "latex"

" Some Plugin config
" autocompletion
" tex live preview

" UltiSnips setup
let g:UltiSnipsExpandTrigger='<c-k>'
let g:UltiSnipsJumpForwardTrigger='<c-k>'
let g:UltiSnipsJumpBackwardTrigger='<c-s-k>'
let g:UltiSnipsSnippetsDir=$HOME.'/.vim/plugged/vim-snippets/UltiSnips'
let g:UltiSnipsListSnippets="<c-h>"

" color scheme
let g:airline_theme='papercolor'
let g:airline_solarized_bg='light'
set t_Co=256
colorscheme PaperColor

" Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'	
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
