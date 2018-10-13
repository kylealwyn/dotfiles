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

" Other goodies
Plug 'skywind3000/asyncrun.vim'

" Syntax Highlighting
Plug 'vim-airline/vim-airline'
"Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'mxw/vim-jsx'
"Plug 'leshill/vim-json'
Plug 'tpope/vim-rails'
Plug 'hail2u/vim-css3-syntax'
"Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components'

" Themeu
Plug 'larsbs/vimterial'
Plug 'noahfrederick/vim-noctu'
Plug 'ajmwagar/vim-deus'
Plug 'ayu-theme/ayu-vim'
Plug 'jacoborus/tender.vim'
Plug 'mhartington/oceanic-next'
Plug 'nightsense/nemo'
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

" Theme it up
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

syntax enable " Enable pretty colors
set t_Co=256 " Set Vim-specific sequences for RGB colors
let g:deus_termcolors=256
set background=dark
let ayucolor="mirage"
let g:enable_bold_font=1
hi CursorLine term=bold cterm=bold guibg=Grey30
let g:airline_theme = 'oceanicnext'
colorscheme vimterial

"set t_ut= " Disable background erase
set cursorline
set number
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
" Automatically remove whitespace
autocmd BufWritePre * :%s/\s\+$//e

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
set signcolumn=yes

" Allow JSX in normal JS files
let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" Ale linter settings
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
" Autocomplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#flow#flow_bin = 'flow'

set textwidth=120 " new line after 80 characters
" However, in Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=80
" Colour the 81st (or 73rd) column so that we don’t type over our limit
set colorcolumn=+1
" In Git commit messages, also colour the 51st column (for titles)
autocmd FileType gitcommit set colorcolumn+=51

" Emmet Stuff
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Run prettier on js file saves
"autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "
let g:mapleader = " "

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
tnoremap <Esc> <C-\><C-n>

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>r :source ~/.vimrc<CR>
nmap <leader>w :w!<cr>
nmap <leader>s :w!<cr>
nmap <leader>q :q<cr>
