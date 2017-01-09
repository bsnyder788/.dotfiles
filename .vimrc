set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tomasr/molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'ciaranm/detectindent'
Plugin 'matchit.zip'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-tbone'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'elixir-lang/vim-elixir'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set encoding=utf-8
set showcmd
let mapleader=","
let maplocalleader="\\"
set nolist

" clean trailing whitespace
nnoremap <leader>ww mz:%s/\s\+$//<cr>:let @/=''<cr>`z

set background=dark
colorscheme molokai
set relativenumber number
set laststatus=2
set t_Co=256
syntax on
set cursorline
let g:airline_powerline_fonts=1
"let g:ctrlp_map = '<c-p>'
" Use <leader>t to open ctrlp
let g:ctrlp_map = '<leader>t'
" Ignore these directories
set wildignore+=*.class
" disable caching
let g:ctrlp_use_caching=0
cmap w!! w !sudo tee > /dev/null %

" remap arrow keys
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <<
nnoremap <Right> >>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <gv
vnoremap <Right> >gv

inoremap jk <Esc>

noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h

nnoremap ; :
nnoremap : ;

nnoremap ! :!

inoremap <c-u> <Esc>BveUA

set ignorecase
set smartcase
set incsearch
"set showmatch
let loaded_matchparen = 1
set hlsearch

noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

nnoremap n nzzzv
nnoremap N Nzzzv

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

filetype plugin indent on
au BufNewFile, BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
au FileType java set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)', '#(uptime | cud -d " " -f 1,2,3)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '#(date)',
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}

" Go related stuff
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

au BufRead,BufNewFile *.go set filetype=go
au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.exs set filetype=elixir
