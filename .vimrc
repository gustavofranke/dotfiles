set nocompatible
filetype plugin on

execute pathogen#infect()
filetype plugin indent on

" awesome colorscheme, enable syntax processing
syntax enable
set background=dark
colorscheme solarized

set tabstop=4       " number of visual spaces per TAB
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

map <C-n> :NERDTreeToggle<CR>

au FileType cucumber setl sw=2 sts=2 et

" `:set list` shows invisible chars, `:set nolist` hides them, `:set list!` toggles between shown them and hiding them. This mapping toggles invisible chars by typing `\l`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Pressing `,v` opens the vimrc file in a new tab.
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

" Pressing `,i` opens the vimrc file in a new tab.
let mapleader = ","
nmap <leader>i :vsp $MYVIMRC<CR>

" ctrlp plugin settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|build|bin)$'
  \ }

" gundo plugin related
nnoremap <F5> :GundoToggle<CR>

" tagbar plugin related
nmap <F8> :TagbarToggle<CR>

" commentary plugin related
autocmd FileType groovy setlocal commentstring=//\ %s

" Changing focus between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set history=200

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" indent xml
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

" automatically expands to the path of the active buffer when in cmd line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
