syntax on
set t_Co=256
colorscheme wombat256 
set guifont=Consolas:h11:cANSI
set number
" Use hard tabs
set tabstop=4
set shiftwidth=4

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

" Make sure a block cursor is displayed in normal model, and a line in insert modes.
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Commenting
autocmd FileType c,cpp,java let b:comment_leader = '// '
autocmd FileType sh,,python   let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>'"'"

" Make sure backspace and delete work over line breaks and automatically-inserted indentation
set backspace=indent,eol,start
