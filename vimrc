runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" syntax/filetypes {{{1
syntax enable
filetype plugin on
filetype indent on

" backup files and history {{{1
set history=300
set nobackup
set nowritebackup
set noswapfile
set autoread

" terminal hacks {{{1
" change timeout for sending esc/meta through terminal
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout
set ttimeoutlen=50

" user interface {{{1
set scrolloff=7
set wildmenu
set hidden
set number
set laststatus=2

" mouse control in terminal
set mouse=a
set ttyfast
set ttymouse=xterm2

set formatoptions=qwnt2
set backspace=start,indent
set tildeop

" search
set ignorecase smartcase
set hlsearch
set incsearch
set magic

set showmatch
set matchtime=2

" no sound on errors
set noerrorbells
set novisualbell
set t_vb=

" lock scrolling horizontally when using scrollbind
set scrollopt+=hor
set scrollopt+=ver
set scrollopt+=jump

set listchars=tab:»\ ,eol:¬

" text, tab and indent {{{1
set expandtab
set shiftwidth=4
set smarttab

set linebreak
set textwidth=500

set autoindent
set nowrap

" show length of visual mode selection
set showcmd

" mappings {{{1
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" window movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" buffer changing
map <M-l> :bn<cr>
map <M-h> :bp<cr>

map <M-n> :cn<cr>
map <M-p> :cp<cr>

highlight ExtraWhitespace ctermbg=0 guibg=#073642
match ExtraWhitespace /\s\+$/
