
syntax enable " Enable pretty colors
set t_Co=256 " Set Vim-specific sequences for RGB colors
set t_ut= " Disable background erase
set cursorline
set number
set so=7
set mouse=a
set backspace=2
set ruler
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

filetype plugin on
filetype indent on

call plug#begin('~/.vim/plugged')
" Nice functional stuff
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'

" Neeeeerd
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

" Git
Plug 'tpope/vim-fugitive'

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Lint
Plug 'w0rp/ale'

" Syntax Highlighting
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'tpope/vim-rails'
Plug 'hail2u/vim-css3-syntax'

" Themes
"Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
call plug#end()

" Theme it up
if has("termguicolors")
  set termguicolors
endif

set background=dark
let g:solarized_termcolors=256
let g:hybrid_custom_term_colors=1
let g:enable_bold_font=1
let g:airline_theme = 'one'
colorscheme hybrid_material

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

autocmd BufWritePre * :%s/\s\+$//e " Automatically remove whitespace

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
nnoremap <esc>^[ <esc>^[

" New panes open below or to the right
set splitbelow
set splitright

" Make it easier to navigate from pane to pane
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Automatically open NerdTree if Vim is opened with no arguments
autocmd vimenter * if !argc() | NERDTree | endif
autocmd VimEnter * wincmd p
map <C-\> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1

" Make CtrlP scan whole directory
map <C-p> :GFiles<CR>

" Always make room for git gutter
let g:gitgutter_sign_column_always=1

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" Ale linter settings
let g:ale_sign_error = '✖︎'
let g:ale_sign_warning = '⚠︎'
let g:ale_sign_column_always = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign
set statusline+=%#warningmsg#
set statusline+=%{ALEGetStatusLine()}
set statusline+=%*

" Autocomplete
let g:deoplete#enable_at_startup = 1

set textwidth=80 " new line after 80 characters
" However, in Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=72
" Colour the 81st (or 73rd) column so that we don’t type over our limit
set colorcolumn=+1
" In Git commit messages, also colour the 51st column (for titles)
autocmd FileType gitcommit set colorcolumn+=51

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "
let g:mapleader = " "

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>r :source ~/.vimrc<CR>
nmap <leader>w :w!<cr>
nmap <leader>s :w!<cr>
nmap <leader>q :q<cr>
