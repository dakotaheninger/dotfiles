"--------------
"Plugins
"--------------
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'vim-syntastic/syntastic'
Plug 'maksimr/vim-jsbeautify'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

"--------------
"Color
"--------------
colorscheme slate

"--------------
"UI
"--------------
set ruler
set relativenumber
set nu
set nowrap
set cursorline
set tabstop=4 shiftwidth=4
set laststatus=2
set visualbell
set title
set mouse=a

"-------------
"Behaviors
"-------------
set clipboard=unnamed
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set backspace=indent,eol,start
set mousemodel=popup
set directory^=$TMP//,$TEMP//,$TMPDIR//,/tmp//
set nobackup
set nowritebackup

"-------------
"NERDTree
"-------------
nmap <silent><C-n> :NERDTreeToggle<CR>

"-------------
"AutoCmd
"-------------
autocmd BufWritePre *.js :call JsBeautify()

"-------------
"ESLint
"-------------
let g:syntastic_javascript_checkers=['eslint']

