execute pathogen#infect()
syntax on
filetype plugin indent on
set et
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set shiftround
set autoindent
set copyindent
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set scrolloff=5
set backspace=2
set number
set ruler
set visualbell
set noerrorbells
set laststatus=2
set statusline=%n\ %F\ %m%r\%=%c-%l/%L
set wildignore=*.o,*~,*.pyc

nnoremap ; :nohlsearch<CR>
set pastetoggle=<F2>

if has("unix")
    set backup
    set backupdir=/tmp
    set directory=/tmp
endif

au BufRead,BufNewFile */bt/*  set noeol binary

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"python highlighting extras
let python_highlight_all = 1

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()

autocmd BufWritePre *.py :%s/\s\+$//e
