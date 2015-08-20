set background=dark
"colorscheme solarized         " awesome colorscheme
syntax enable           " enable syntax processing
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
"nnoremap <leader><space> :nohlsearch<CR>

execute pathogen#infect()
filetype plugin indent on

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

set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <F5> :GundoToggle<CR>

autocmd FileType groovy setlocal commentstring=//\ %s

" Changing focus between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
