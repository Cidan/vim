set ts=2
set sw=2
set guicursor=
call plug#begin('~/.local/share/nvim/plugged')
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'vim-airline/vim-airline', { 'tag': '*' }
Plug 'kien/ctrlp.vim', { 'tag': '*' }
Plug 'w0rp/ale', { 'tag': '*' }
Plug 'b4b4r07/vim-hcl', { 'tag': '*' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree'
call plug#end()

" Color
colorscheme codedark
let g:airline_theme = 'codedark' 

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
let g:ale_set_highlights = 1
highlight ALEError ctermbg=none cterm=underline
highlight ALEWarning ctermbg=none cterm=underline

" Deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_delay = 250

" NERDTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Pre neo-vim
"let g:go_highlight_types = 1
"syntax on
"filetype plugin indent on
"autocmd BufRead,BufNewFile *.go set ts=2 sw=2
