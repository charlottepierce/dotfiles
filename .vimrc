set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()"
" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" End plugin loading
call vundle#end()
filetype plugin indent on

" General settings
syntax on
set t_Co=256
colorscheme wombat256
set guifont=Consolas:h11:cANSI
set number
set ruler " always show line/column number of cursor
set cursorline " always show the currently selected line

" No backup or swap files
set nobackup
set noswapfile
set nowritebackup

" Use hard tabs
set tabstop=4
set shiftwidth=4

" Status line
set showmode
set laststatus=1 " Foce status line always when there are more than one windows

" Search rules
set ignorecase
set smartcase " if pattern starts with uppercase letter, search is case sensitive
set hlsearch " highlight search as typed
set incsearch " incremental search - highlight as you type
" Press enter again after search to remove highlights
nnoremap <CR> :noh<CR><CR>

" Indenting rules
set ai " auto-indent
set si " smart-indent

" Moving up/down will move by visual line in cases of line wrap.
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
set backspace=indent,eol,start " Make sure backspace and delete work over line breaks and automatically-inserted indentation

" Move split with ctrl+<direction> rather than ctrl+w -> <direction>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable manual lookup shortcut
nnoremap K <nop>
vnoremap K <nop>"

" File highlighting
au BufNewFile,BufRead *.ly set filetype=tex " Highlight .ly (lilypond) files as .tex (LaTeX)
au BufNewFile,BufRead *.md set filetype=markdown " Highlight .md files as .markdown

