set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'thaerkh/vim-workspace'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/Mark--Karkat'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"colorsheme
colorscheme basic-dark
syntax enable
set t_Co=256

set cursorline
set number
set nowrap
set autoread
set tabstop=4       " a tab is four spaces
set shiftwidth=4    " number of spaces to use for autoindenting
set softtabstop=4   " let backspace delete indent
set expandtab       " replace tab with spaces
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set showmatch       " set show matching parenthesis
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab        " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set history=1000    " remember more commands and search history
set undolevels=1000 " use many levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup        " do not keep backup files
set noswapfile      " do not keep swp files
set list            " show whitespaces
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2> " F2 activates paste mode
set hidden          " unsaved buffers can be not active
set colorcolumn=120 " max line lenght
set textwidth=120
map <C-j> :bprevious<CR>
map <C-k> :bnext<CR>
set mouse=a
set wildmenu
set wildmode=list:longest,full
set whichwrap=b,s,<,>,[,]
set foldenable
set timeoutlen=1000
set clipboard=unnamedplus
nnoremap <C-Left> :bprev<CR>
nnoremap <C-Right> :bnext<CR>
map <2-leftmouse> \m
nnoremap & *
nnoremap ^ #


" ctrlp configuration
let g:ctrlp_cmd = 'CtrlP :pwd'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_files=50000
let g:ctrlp_max_depth=50
"let g:ctrlp_working_path_mode='r'
"let g:ctrlp_open_new_file = 't'


"git-airline configuration
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline_theme='simple'
set laststatus=2   " Always show the statusline
let g:airline_powerline_fonts=1

" Multiple cursors
let g:multi_cursor_start_key='<F5>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<Esc>'

"CtrlSF
nmap <C-S-f> :CtrlSF
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

"NerdTREE
map <F3> :NERDTreeToggle .<CR>

"TagBar
nmap <F8> :TagbarToggle<CR>

"workspace
let g:workspace_session_name = 'Session.vim'
let g:workspace_autosave_always = 1
let g:workspace_autosave_untrailspaces = 0

"create ctags command
command! Ctags execute "!ctags -R --tag-relative=yes --exclude=\".git|.svn|.tox|doc|build\" -f tags"

highlight DbgLog ctermfg=241 guifg=#000000
highlight InfLog ctermfg=223 guifg=#00005f
highlight WrnLog ctermfg=63 guifg=#00005f
highlight ErrLog ctermfg=126 guifg=#00005f

"copy + reg into *
:command Cpreg let @*=@+
"use black hole register
:map <leader>b "_
