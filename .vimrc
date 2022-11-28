set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'gmarik/vundle'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'

Plug 'scrooloose/syntastic'
let g:syntastic_coffee_checkers=['coffeelint']
let g:syntastic_scala_checkers=[]
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:ruby_path='RBENV_VERSION=2.1.2 ruby'
Plug 'tpope/vim-unimpaired'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vista.vim'
let g:vista_executive_for = {
      \ 'rust': 'coc',
      \ }
let g:vista#renderer#enable_icon = 1
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

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
Plug 'fatih/vim-go'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'

Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/ruby-matchit'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
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

Plug 'chiel92/vim-autoformat'

Plug 'slashmili/alchemist.vim'
Plug 'github/copilot.vim'

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

" ================ Autoformat =======================

au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

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
au BufRead,BufNewFile *.hs,*.ex,*.exs,*.erl,*.eex,*.hrl,*.rb,*.js,*.rs,*.md set colorcolumn=120
au BufRead,BufNewFile *.hs,*.ex,*.exs,*.erl,*.eex,*.hrl,*.rb,*.js,*.rs,*.md set textwidth=120
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
noremap! <ESC> <ESC>:w<CR>
noremap <ESC> <ESC>:w<CR>

" Use 0 to go to first text char in line
nnoremap 0 ^
nnoremap ^ 0

" Toggle paste
nnoremap <leader>p :set invpaste paste?<CR>
set clipboard=unnamedplus

" coc next/prev error
nnoremap [e :call CocAction('diagnosticNext')<CR>
nnoremap ]e :call CocAction('diagnosticPrevious')<CR>

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

let g:coc_global_extensions = [
            \'coc-rust-analyzer',
            \'coc-go',
            \'coc-yank',
            \'coc-pairs',
            \'coc-json',
            \'coc-html',
            \'coc-yaml',
            \'coc-lists',
            \'coc-snippets',
            \'coc-prettier',
            \'coc-xml',
            \'coc-syntax',
            \'coc-git',
            \'coc-marketplace',
            \'coc-highlight',
            \'coc-pyright',
            \]

" Navigate autocomplete using tab and accept using enter
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1):
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" stop annoying auto commenting on new lines
au BufEnter * set fo-=c fo-=r fo-=o

" coc navigation
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gf <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)

" coc actions
nmap <leader>cr <Plug>(coc-rename)
nmap <leader>cf <Plug>(coc-quickfix)

" vista
nmap <leader>vf :Vista finder coc<CR>
nmap <leader>vb :Vista coc<CR>

set shortmess=I

set path+=/usr/local/include
