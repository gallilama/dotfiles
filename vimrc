" Chris Galli's personal .vimrc.
" My thanks to those who have shared so much knowledge.

" Setup Vundle
"   mkdir -p ~/.vim/bundle
"   git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Setup dotfiles
"   git glone https://github.com/gallilama/dotfiles.git ~/projects/dotfiles
"   ln -s ~/projects/dotfiles/vimrc ~/.vimrc
"   vim
"     :PluginInstall

" General " {{{
set nocompatible     " be iMproved, required

set history=128      " number of things to remember

set ignorecase       " case insensitive search
set smartcase        " case sensitive when input has capital letter
set incsearch        " show matches while typing
" " }}}

" Status Line " {{{
" yay for got-ravings!
set laststatus=2        " always show status line
set statusline=
set statusline+=%t      " tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] " file format
set statusline+=%m      " modified flag
set statusline+=%r      " read-only flag
set statusline+=%y      " file type
set statusline+=%=      " left/right separator
set statusline+=%c,     " cursor column
set statusline+=%l/%L   " cursor line/total lines
set statusline+=\ %P    " percent through file
" " }}}


" Formatting " {{{
set nowrap
set textwidth=0

set tabstop=2        " default tabstop 2 spaces
set softtabstop=2    " tab counts as 2 spaces in editing mode
set shiftwidth=2     " default shift width for indents
set expandtab        " tabs into spaces
set smarttab
set autoindent

syntax on
" " }}}


" Plugins " {{{
filetype off                " required

" Vundle plugin manager https://github.com/gmarik/vundle
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All plugins must be added after this line
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
" All plugins must be added before this line

call vundle#end()           " required
filetype plugin indent on   " required
" " }}}


