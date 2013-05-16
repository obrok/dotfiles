set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'

Bundle 'kien/ctrlp.vim'

Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'
" Bundle 'ervandew/supertab'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-commentary'
Bundle 'wlangstroth/vim-haskell'
Bundle 'vim-ruby/vim-ruby'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'altercation/vim-colors-solarized'
Bundle 'msmorgan/vim-flex'
Bundle 'tjennings/git-grep-vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'wikitopian/hardmode'
Bundle 'rodjek/vim-puppet'
Bundle 'tpope/vim-surround'

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0
set clipboard=unnamed

set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=darkred guifg=white

set autoread                    "Reload files changed outside vim
set autowrite

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

nnoremap <leader>h :set hlsearch!<CR>

set t_Co=256
" let g:solarized_termcolors=256
set background=dark
colorscheme solarized

let mapleader = "\<Space>"

map <leader>t <ESC>:let g:test_file = "<C-r>%"<CR>
map <leader>l <ESC>:let g:test_file = "<C-r>%:<C-r>=line(".")<CR>"<CR>
map <leader>r <ESC>:w<CR>:!bin/rspec <C-r>=g:test_file<CR><CR>
map <leader>a :w<CR>:!bin/rspec<CR>
map <leader>m :w<CR>:!make<CR>
map <leader>g :GitGrep 
map <leader>w <c-w>w
map <leader>x :Gblame<CR>

nnoremap <leader>s ms:%s/\s\+$<CR>:w<CR>`s
nnoremap <leader>d mdgg=G`d
nnoremap Y y$

au BufRead,BufNewFile *.hamlc set ft=haml
au! BufNewFile,BufRead *.god set ft=ruby
au BufRead,BufNewFile * set colorcolumn=80
au BufRead,BufNewFile COMMIT_EDITMSG set colorcolumn=50
autocmd! BufRead,BufNewFile *.ino set ft=cpp

" au VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

set laststatus=2
set ruler
set cpoptions+=$

imap <c-l> <space>=><space>

nmap <leader>f :CtrlP<CR>
nmap <leader>b :CtrlPMRU<CR>
nmap <leader>q :q<CR>
nmap <leader><leader> <c-^>
nmap <leader>h :set hlsearch!<CR>
noremap! <ESC><ESC> <ESC>:w<CR>
noremap <ESC><ESC> <ESC>:w<CR>

let g:ycm_key_detailed_diagnostics = "<leader>6"
let g:ctrlp_custom_ignore = 'node_modules/\|build/\|\.agility-shared/\|.git/'
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl,php' : ['->'],
  \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir' : ['.'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

set shortmess=I
