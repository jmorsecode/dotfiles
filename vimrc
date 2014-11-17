set nocompatible
syntax on
if has("gui_running")
	colorscheme solarized
endif

filetype off
set background=dark

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'raimondi/delimitmate'
Plugin 'rkulla/pydiction'
Plugin 'altercation/vim-colors-solarized'
Bundle 'chase/vim-ansible-yaml'

call vundle#end()

let g:pydiction_location = '/home/jmorse/.vim/bundle/pydiction/complete-dict'

filetype indent plugin on

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

nnoremap m q
nnoremap q <NOP>
set number
nnoremap <F2> :set nonumber!<CR>
