call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'scrooloose/nerdtree'
  "Plug 'ryanoasis/vim-devicons'
  Plug 'chriskempson/base16-vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'hashivim/vim-terraform'
  " Better Visual Guide
  Plug 'Yggdroot/indentLine'
  " Syntax check
  Plug 'benekastah/neomake'
  "Plug 'w0rp/ale'
  " Autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'v0.0.80'}
  " Format
  Plug 'sbdchd/neoformat'
  "Plug 'Chiel92/vim-autoformat'
call plug#end()"Config Section

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" UI configuration
syntax on
syntax enable
set termguicolors
" colorscheme
colorscheme base16-gruvbox-dark-hard
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
" vim-autoformat
"noremap <F3> :Autoformat<CR>
"Hot Key Maps
nnoremap <F2> :set nonumber!<CR>
nnoremap <F7> :setlocal nospell! spelllang=en_us<CR>

"Python specific config
let python_highlight_all = 1
let g:neomake_python_enabled_makers = ['flake8']

