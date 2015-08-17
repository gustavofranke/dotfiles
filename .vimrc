":set list shows invisible chars, :set nolist hides them, :set list! toggles between shown them and hiding them. This mapping toggles invisible chars by typing \l
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
