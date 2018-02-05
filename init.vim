set ts=2
set sw=2
set guicursor=
call plug#begin('~/.local/share/nvim/plugged')
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'vim-airline/vim-airline', { 'tag': '*' }
Plug 'kien/ctrlp.vim', { 'tag': '*' }
Plug 'w0rp/ale', { 'tag': '*' }
call plug#end()

" Keymap
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Gutter settings
highlight clear SignColumn
set number

" Ale settings
let g:ale_sign_warning = '⚡︎'
let g:ale_sign_error = '✖︎'
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 0

" Pre neo-vim
"let g:go_highlight_types = 1
"syntax on
"filetype plugin indent on
"autocmd BufRead,BufNewFile *.go set ts=2 sw=2
