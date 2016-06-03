set nocompatible
filetype off
set background=dark
"set t_Co=16
"set term=xterm-256color

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'raimondi/delimitmate'
Plugin 'davidhalter/jedi-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'osyo-manga/vim-over'
Bundle 'pearofducks/ansible-vim'
"Plugin 'benekastah/neomake'
"Plugin 'haya14busa/incsearch.vim'
call vundle#end()

if has("gui_running")
	colorscheme solarized
endif

colorscheme alduin

filetype indent plugin on

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

nnoremap m q
nnoremap q <NOP>
set number
nnoremap <F2> :set nonumber!<CR>
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

set cursorline
hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=NONE
hi LineNr ctermfg=black
hi CursorLineNr ctermfg=black

let python_highlight_all = 1
let g:alduin_Shout_Windhelm = 1
syntax on
