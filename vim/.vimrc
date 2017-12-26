" ╔═╗┬┌┐┌┌─┐┬  ┌─┐─┐ ┬  ╦  ╦╦╔╦╗
" ╔═╝│││││ ┬│  ├─┤┌┴┬┘  ╚╗╔╝║║║║
" ╚═╝┴┘└┘└─┘┴─┘┴ ┴┴ └─   ╚╝ ╩╩ ╩
" zinglax's .vimrc file

" LINE NUMBERS
set nu

" THEME
color koehler

" CURSOR LINE
set cursorline

" CURSOR COLUMN
set cursorcolumn
hi CursorColumn cterm=none

" =============================================================================
" PLUGINS =====================================================================
" vim-plug (https://github.com/junegunn/vim-plug)
" installation: 
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Then to install plugins
" :PlugInstall
"
" PLUGINS BEGIN
call plug#begin('~/.vim/plugged')

" NERDTree
Plug 'https://github.com/scrooloose/nerdtree.git'

" NERDTree git status
Plug 'Xuyuanp/nerdtree-git-plugin'

" AirLine (status bar)
Plug 'vim-airline/vim-airline'

" Tag Bar
" sudo apt-get install ctags
Plug 'https://github.com/majutsushi/tagbar'


call plug#end()
" PLUGINS END ==================================================================
" ==============================================================================

" NERDTree #####################################################################
" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDTree END #####################################################################

" TagBar #####################################################################
nmap <F8> :TagbarToggle<CR>
" TagBar END #####################################################################



