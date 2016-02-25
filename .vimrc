set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()"
" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-commentary'
Plugin 'lervag/vimtex'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline-themes'
" End plugin loading
call vundle#end()
filetype plugin indent on

" Configure ultisnips and YCM focus and completion shortcuts
" up/down arrow keys to select completion
let g:ycm_key_list_select_completion=['<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
" Tab to expand completion/snippet - tab/shift+tab to move between completion variables
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" ctrl+p to activate CtrlP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" airline settings
let g:airline_theme='wombat'
" remove separators
let g:airline_left_sep=''
let g:airline_right_sep=''
" let g:airline_section_x = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#' " set section to file path
let g:airline_section_x=""
let g:airline_section_y="%Y" " set section to file type

" General settings
syntax on
set t_Co=256
colorscheme wombat256
set guifont=Consolas:h11:cANSI
set number
set ruler " always show line/column number of cursor
set cursorline " always show the currently selected line
set mouse=a " can click to move the cursor
set showmatch " highlight matching brackets

" No backup or swap files
set nobackup
set noswapfile
set nowritebackup

" Use hard tabs
set tabstop=4
set shiftwidth=4

" Status line
set showmode
set laststatus=2 " Foce status line always when there are more than one windows

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

" Spell checking for markdown and tex files
autocmd BufRead,BufNewFile *.md,*.markdown,*.tex setlocal spell
