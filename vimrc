set nocompatible

" *********************************************
" Vundle Plugins
" *********************************************
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Chiel92/vim-autoformat'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'StanAngeloff/php.vim'
Plugin 'chr4/nginx.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'rakr/vim-one'
Plugin 'bogado/file-line'
Plugin 'christoomey/vim-sort-motion'      " gs{motions}
Plugin 'christoomey/vim-system-copy'      " cp{motion}, cP, cv
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dbeecham/ctrlp-commandpalette.vim'
Plugin 'gabrielelana/vim-markdown'
Plugin 'janko-m/vim-test'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'junegunn/vim-easy-align'
Plugin 'kana/vim-operator-user'
Plugin 'kana/vim-textobj-line'            " object l, il, al
Plugin 'kana/vim-textobj-user'            " requires bt vim-textobj-quotes
Plugin 'kristijanhusak/vim-carbon-now-sh'
Plugin 'leafgarland/typescript-vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'machakann/vim-highlightedyank'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'ngmy/vim-rubocop'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'posva/vim-vue'
Plugin 'qpkorr/vim-bufkill'
Plugin 'romainl/vim-qf'
Plugin 'scrooloose/nerdtree'
Plugin 'simeji/winresizer'                " To enter resizing mode : ctrl+e, and exit by enter
Plugin 'stephpy/vim-yaml'
Plugin 'szw/vim-maximizer'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'             " gc{motion}, v_gc, {number}gcc
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'                 " 'solve repeated the last native command inside that map, rather than the map as a whole'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-surround'               " cs, ds, ys + {motion}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wellle/targets.vim'
Plugin 'wellle/visual-split.vim'

call vundle#end()

" *********************************************
" General Configurations
" *********************************************
filetype off
syntax enable
syntax on
set cursorline
set hidden                                                " All hiding unsaved buffer, and move on
set number
set numberwidth=4

set backspace=indent,eol,start                            " Make backspace works like most program
set laststatus=2                                          " Show the status line all the time
set lazyredraw
set nopaste
set showcmd
set ttyfast
set visualbell                                            " Disable sound

filetype plugin indent on

set autowrite                                             " autoload write
set autoread                                              " autoload read

" au CursorHold,CursorHoldI,BufEnter * checktime
" au BufWritePost,BufReadPost * checktime | NERDTreeFocus | execute 'normal R' | wincmd p

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

set foldnestmax=3                                         " Folding: deepest fold is 3 levels
set nofoldenable                                          " Folding: dont fold by default

set nowrap                                                " Don't wrap lines
set linebreak                                             " Wrap lines at convenient points

set noswapfile                                            " turn off swap file
set nobackup                                              " turn off backup file
set nowb

" Search
set incsearch                                             " Search: Find as you type search
set hlsearch                                              " Search: Highlight search terms
set ignorecase                                            " Search: Case-insensitive searching.
set smartcase                                             " Search: But case-sensitive if expression contains a capital letter.

" Ex-command completion - If you’re used to the autocomplete menu provided by zsh,
set wildmenu
set wildmode=full
set wildignore=*.o,*.obj,*~       " Stuff to ignore when tab completing
" *********************************************
" Plugin Customization
" *********************************************
if filereadable($HOME . "/.vim/custom/plugin_customizations.vim")
  source ~/.vim/custom/plugin_customizations.vim
endif


" *********************************************
" Keys mapping
" *********************************************
" Change default leader to ,
let mapleader=','

" Save file
nmap <leader>w :w!<CR>

" Clean up search hightlight
nmap <Space> :noh<CR>

" Easier navigation between split windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" vim-one
" The first two lines forces true colour on, since vim can’t detect it within tmux.
" The last line on its own will work outside tmux, but result in no colours inside tmux.
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" let g:one_allow_italics = 1
set background=dark
colorscheme one
highlight LineNr guifg=grey

"" Running Rubocop with auto-correct
let g:vimrubocop_keymap = 0
map <leader>ac :w<CR> :RuboCop --auto-correct %<CR><leader>q


" *********************************************
" Vim Better Whitespace
" *********************************************
let g:strip_whitespace_on_save=1
let g:better_whitespace_filetypes_blacklist=['vimrc']
