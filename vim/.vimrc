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

" PLUGINS
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


" PLUGINS END
call plug#end()

