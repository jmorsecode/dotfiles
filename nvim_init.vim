"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set t_Co=256
set background=dark
set updatetime=2000
set guicursor=

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'raimondi/delimitmate'
  Plug 'osyo-manga/vim-over'
  Plug 'pearofducks/ansible-vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'hashivim/vim-terraform'
  Plug 'benekastah/neomake'
  Plug 'zchee/deoplete-jedi'
  Plug 'morhetz/gruvbox'
  Plug 'sbdchd/neoformat'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

 "Plug 'PotatoesMaster/i3-vim-syntax'
 "Plug 'Valloric/YouCompleteMe'
 "Plug 'vim-syntastic/syntastic'
 "Plug 'haya14busa/incsearch.vim'
 "Plug 'chriskempson/base16-vim'
call plug#end()

"NerdTree config:
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-t> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow

colorscheme gruvbox

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"Terminal config:
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

nnoremap m q
nnoremap q <NOP>
set number
nnoremap <F2> :set nonumber!<CR>
nnoremap <F7> :setlocal nospell! spelllang=en_us<CR>
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=NONE
"hi LineNr ctermfg=black
"hi CursorLineNr ctermfg=black

let python_highlight_all = 1
let g:neomake_python_enabled_makers = ['flake8']
let g:gitgutter_sign_allow_clobber = 1

" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4

" neoformat
"noremap <F3> :Neoformat<CR>
"
" Ansible YML settings
autocmd FileType yaml setlocal ts=2 sw=2 et ai cuc

let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'
