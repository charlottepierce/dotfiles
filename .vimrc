set nocompatible
syntax on
set t_Co=256
colorscheme wombat256
set guifont=Consolas:h11:cANSI
set number
set ruler " always show line/column number of cursor
set cursorline " always show the currently selected line

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

" Syntax folding
set foldmethod=indent
set foldlevel=1

" Files to ignore
set wildignore=*.class,*.pyc

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

" Move split with ctrl+<direction> rather than ctrl+w -> <direction>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Comment definitions for each file type
autocmd FileType c,cpp,java let b:comment_leader = '// '
autocmd FileType sh,python let b:comment_leader = '# '
autocmd FileType tex let b:comment_leader = '% '
autocmd FileType vim let b:comment_leader = '" '
" Mass commenting - comma-c to comment, comma-C to uncomment
let mapleader=","
map <leader>c :s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/g<CR>
map <leader>C :s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//g<CR>

" Disable navigation with arrow keys
nnoremap <down> <nop>
nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Disable manual lookup shortcut
nnoremap K <nop>
vnoremap K <nop>"

" No backup or swap files
set nobackup
set noswapfile
set nowritebackup

" Make sure backspace and delete work over line breaks and automatically-inserted indentation
set backspace=indent,eol,start

" Highlight trailing whitespace
match Todo /\s\+$/

" Remove trailing whitespace on save - don't alter cursor position
fun! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfun
autocmd FileType c,cpp,java,vim,python,css,html,tex autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Highlight .ly (lilypond) files as .tex (LaTeX)
au BufNewFile,BufRead *.ly set filetype=tex

" Highlight .md files as .markdown
au BufNewFile,BufRead *.md set filetype=markdown

