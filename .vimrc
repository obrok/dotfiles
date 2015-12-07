set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'kien/ctrlp.vim'

" Plugin 'scrooloose/syntastic'
let g:syntastic_coffee_checkers=['coffeelint']
let g:syntastic_scala_checkers=[]
let g:ruby_path='RBENV_VERSION=2.1.2 ruby'
Plugin 'tpope/vim-unimpaired'

Plugin 'nono/vim-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'wlangstroth/vim-haskell'
" Plugin 'vim-ruby/vim-ruby'
Plugin 'msmorgan/vim-flex'
Plugin 'rodjek/vim-puppet'
Plugin 'jnwhiteh/vim-golang'
Plugin 'derekwyatt/vim-scala'
Plugin 'elixir-lang/vim-elixir'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'

" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'ecomba/vim-ruby-refactoring'
" Plugin 'jgdavey/vim-blockle'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'

Plugin 'tjennings/git-grep-vim'
Plugin 'tpope/vim-fugitive'

Plugin 'michaeljsmith/vim-indent-object'

" Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

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
set background=dark
colorscheme gruvbox

let mapleader = "\<Space>"

map <leader>tf <ESC>:let g:test_file = "<C-r>%"<CR>
map <leader>tl <ESC>:let g:test_file = "<C-r>%:<C-r>=line(".")<CR>"<CR>
map <leader>tr <ESC>:w<CR>:!bin/rspec <C-r>=g:test_file<CR><CR>
map <leader>ta :w<CR>:!bin/rspec<CR>
map <leader>m :w<CR>:!make<CR>
map <leader>gg :GitGrep <C-r><C-w><CR>
map <leader>gs :GitGrep ""<left>
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
nmap <leader>e :vsplit<CR>
noremap! <ESC><ESC> <ESC>:w<CR>
noremap <ESC><ESC> <ESC>:w<CR>
nnoremap 0 ^
nnoremap ^ 0

nnoremap <leader>p :set invpaste paste?<CR>
set showmode

let g:ycm_key_detailed_diagnostics = "<leader>6"
let g:ctrlp_custom_ignore = 'node_modules/\|build/\|\.agility-shared/\|.git/|target/\|_build/\|deps/\|rel/'
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
