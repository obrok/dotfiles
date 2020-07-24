set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'gmarik/vundle'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'scrooloose/syntastic'
let g:syntastic_coffee_checkers=['coffeelint']
let g:syntastic_scala_checkers=[]
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:ruby_path='RBENV_VERSION=2.1.2 ruby'
Plug 'tpope/vim-unimpaired'

Plug 'vim-scripts/paredit.vim'
Plug 'nono/vim-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'wlangstroth/vim-haskell'
Plug 'msmorgan/vim-flex'
Plug 'rodjek/vim-puppet'
Plug 'jnwhiteh/vim-golang'
Plug 'derekwyatt/vim-scala'
Plug 'elixir-lang/vim-elixir'
Plug 'mxw/vim-jsx'
Plug 'vim-scripts/groovy.vim'
Plug 'leafo/moonscript-vim'
Plug 'tikhomirov/vim-glsl'
Plug 'lambdatoast/elm.vim'
Plug 'jakwings/vim-pony'
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1
Plug 'racer-rust/vim-racer'
let g:racer_experimental_completer = 1
Plug 'fatih/vim-go'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'

Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/ruby-matchit'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'ervandew/supertab'
Plug 'editorconfig/editorconfig-vim'

Plug 'tjennings/git-grep-vim'
Plug 'tpope/vim-fugitive'

Plug 'michaeljsmith/vim-indent-object'

Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
let g:airline_section_b = ''
Plug 'godlygeek/tabular'


Plug 'tpope/vim-projectionist'

Plug 'vim-test/vim-test'
let test#strategy = 'vimterminal'
let test#vim#term_position = 'belowright'

call plug#end()
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
set list listchars=tab:>-,trail:·,extends:>,precedes:<

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

let ruby_space_errors = 1

set directory=~/.vim/working
set backupdir=~/.vim/backup

set t_Co=256
set background=dark
colorscheme gruvbox

let mapleader = "\<Space>"

" Switch windows
map <leader>w <c-w>w

" Git shortcuts
map <leader>gg :GitGrep <C-r><C-w><CR>
map <leader>gs :GitGrep ""<left>
map <leader>gb :Gblame<CR>

" Remove spaces at ends of line
nnoremap <leader>s ms:%s/\s\+$<CR>:w<CR>`s

" Format whole file and go back to the same place
nnoremap <leader>d mdgg=G`d

" Make Y behave like D
nnoremap Y y$

" Switch between test/code with projectionist
nnoremap <leader>gt :A<CR>

" Run tests with vim-test
nnoremap <leader>rf :TestFile<CR>
nnoremap <leader>rl :TestNearest<CR>
nnoremap <leader>ra :TestSuite<CR>

au BufRead,BufNewFile * set colorcolumn=80
au BufRead,BufNewFile *.hs,*.ex,*.exs,*.erl,*.eex,*.hrl,*.rb,*.js,*.rs,*.md set colorcolumn=100
au BufRead,BufNewFile *.hs,*.ex,*.exs,*.erl,*.eex,*.hrl,*.rb,*.js,*.rs,*.md set textwidth=100
au BufRead,BufNewFile COMMIT_EDITMSG set colorcolumn=50

set laststatus=2
set ruler
set cpoptions+=$

" CtrlP shortcuts
nmap <leader>f :CtrlP<CR>
nmap <leader>b :CtrlPMRU<CR>

nmap <leader>q :q<CR>

" Last file on double space
nmap <leader><leader> <c-^>

" Toggle highlight
nmap <leader>h :set hlsearch!<CR>

" Double escape optionally exits insert and saves
noremap! <ESC><ESC> <ESC>:w<CR>
noremap <ESC><ESC> <ESC>:w<CR>

" Use 0 to go to first text char in line
nnoremap 0 ^
nnoremap ^ 0

" Toggle paste
nnoremap <leader>p :set invpaste paste?<CR>

set showmode

let g:ycm_key_detailed_diagnostics = "<leader>6"
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/]node_modules/|build/|.git/|target/|_build/|deps/|rel/|venv/|bundle|js_sandbox|_book',
      \ 'file': '\v\.pyc$',
      \ }
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

set path+=/usr/local/include
