set hls
set autoindent
set number
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" highlight too long lines
autocmd BufWinEnter *.c let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
autocmd BufWinLeave *.c call matchdelete(w:m2)

" permanently highlight 80th column
" set colorcolumn=80

" highlight trailing whitespace and tabs after spaces in leading whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter *.c match ExtraWhitespace /^\s*         \|\s\+$/
autocmd InsertEnter *.c match ExtraWhitespace /^\s*         \|\s\+\%#\@<!$/
autocmd InsertLeave *.c match ExtraWhitespace /^\s*         \|\s\+$/
autocmd BufWinLeave *.c call clearmatches()

