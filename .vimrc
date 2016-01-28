set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git' 
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Solarized'
Plugin 'ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'dbext.vim'
" Plugin 'vim-scripts/vcscommand.vim'
Plugin 'juneedahamed/svnj.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Colors -------------------------------------
syntax enable " enable syntax processing
set background=dark
colorscheme solarized

" Tabs -------------------------------------
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=4    " when indenting with '>', use 4 spaces width

" Linebreaks 100 -----------------------------
set lbr
set tw=100

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" UI Config ---------------------------------
set number              " show line numbers
set cursorline          " highlight current line
set showmatch           " highlight matching [{()}]

" Searching ------------------------------------
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding --------------------------------------
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" Moving ----------------------------------------
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" CtrlP ------------------------------------------
" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" NERDTree ---------------------------------------
set clipboard=unnamed
autocmd vimenter * NERDTree
map <C-t> :tabn<Enter>
map <C-n> :tabnew<Enter>
map nt :NERDTreeTabsToggle<Enter>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrows=0

" DBExt -----------------------------------------
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=:dbname=moonshot'
filetype plugin indent on

" SVN ------------------------------------------
let g:svnj_browse_cache_all = 1  "This enables caching, Listing of files will be faster

