set nocompatible

let mapleader = "\<Space>"

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'

nmap <leader>f :CtrlP<CR>
nmap <leader>b :CtrlPMRU<CR>

Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ervandew/supertab'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-commentary'
Bundle 'wlangstroth/vim-haskell'
Bundle 'sickill/vim-pasta'
Bundle 'vim-ruby/vim-ruby'

" ================ General Config ====================

set relativenumber                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0

set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=darkred guifg=white

set autoread                    "Reload files changed outside vim

syntax on

" Autocomplete
set wildmode=longest,list
set wildmenu

" Tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

let ruby_space_errors = 1

set directory=~/.vim/working
set backupdir=~/.vim/backup

nnoremap <F3> :set hlsearch!<CR>

set t_Co=256
source ~/.molokai.vim

map <F4> <ESC>:let g:test_file = "<C-r>%"<CR>
imap <F4> <ESC>:let g:test_file = "<C-r>%"<CR>
imap <F2> <ESC>:w<CR>:!bin/rspec <C-r>=g:test_file<CR><CR>
map <F2> <ESC>:w<CR>:!bin/rspec <C-r>=g:test_file<CR><CR>
map <F6> <ESC>:w<CR>:!nosetests<CR>
imap <F6> <ESC>:w<CR>:!nosetests<CR>
map <F7> <ESC>:w<CR>:!mlint.sh<CR>
imap <F7> <ESC>:w<CR>:!mlint.sh<CR>

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

nnoremap <F5> :%s/\s\+$<CR>:w<CR>

au BufRead,BufNewFile *.hamlc set ft=haml

set laststatus=2
set ruler
set cpoptions+=$
