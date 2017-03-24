syntax on

" set Vim-specific sequences for RGB colors
if $TERM == "xterm-256color"
  set t_Co=256
endif

set guifont=Menlo\ Regular:h18
set cursorline
set number
set colorcolumn=90
set so=7
set mouse=a
set backspace=2
set ruler
autocmd BufWritePre * :%s/\s\+$//e

filetype plugin on
filetype indent on

set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set autoread
set ignorecase " - case insensitive
set smartcase  " - use case if any caps used
set incsearch  " - show match as search proceeds
set hlsearch   " - search highlighting
set showmatch

set nobackup
set nowb
set noswapfile

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
nnoremap <esc>^[ <esc>^[

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
" Plug 'flazz/vim-colorschemes'
Plug 'terryma/vim-multiple-cursors'
" Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'godlygeek/csapprox'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'w0ng/vim-hybrid'
call plug#end()

set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd vimenter * if !argc() | NERDTree | endif
autocmd VimEnter * wincmd p
map <C-\> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1

let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Always
let g:gitgutter_sign_column_always=1

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "
let g:mapleader = " "

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>r :source ~/.vimrc<CR>
nmap <leader>w :w!<cr>
nmap <leader>s :w!<cr>
nmap <leader>q :q<cr>
