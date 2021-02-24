set nocompatible
filetype off
set background=dark
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set t_Co=256
set term=xterm-256color

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 Plugin 'raimondi/delimitmate'
 Plugin 'davidhalter/jedi-vim'
 Plugin 'osyo-manga/vim-over'
 Plugin 'alessandroyorba/alduin'
 Plugin 'pearofducks/ansible-vim'
 Plugin 'tpope/vim-fugitive'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'hashivim/vim-terraform'
 "Plugin 'PotatoesMaster/i3-vim-syntax'
 "Plugin 'haya14busa/incsearch.vim'
call vundle#end()

colorscheme gruvbox

filetype indent plugin on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set expandtab

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

nnoremap m q
nnoremap q m
"nnoremap q <NOP>
set number
nnoremap <F2> :set nonumber!<CR>
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=NONE
"hi LineNr ctermfg=black
"hi CursorLineNr ctermfg=black

let python_highlight_all = 1

syntax on
