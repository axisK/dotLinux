" Vim settings - has side effects on other options
set nocompatible

set number					"Line Numbers
set history=1000			"cmdline buffer
set showcmd
set showmode
set visualbell
set autoread
set hidden
syntax on

set hlsearch
set viminfo='100,f1

set noswapfile

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile


set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

set list listchars=tab:»\ ,trail:·

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

call pathogen#infect()
filetype plugin indent on

nmap <F8> :TagbarToggle<CR>
