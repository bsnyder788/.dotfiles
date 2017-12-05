set nocompatible

" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'Lokaltog/vim-easymotion'
Plug 'tomasr/molokai'
Plug 'kien/ctrlp.vim'
Plug 'ciaranm/detectindent'
Plug 'kien/rainbow_parentheses.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-tbone'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'

filetype plugin indent on  " required!
call plug#end()

" Put your non-Plugin stuff after this line

set encoding=utf-8
set showcmd
let mapleader=","
let maplocalleader="\\"
set nolist

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
set omnifunc=syntaxcomplete#Complete
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
