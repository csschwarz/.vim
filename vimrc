"Setup pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

"Filetype detection
syntax on
filetype plugin indent on
filetype on
filetype plugin on
syntax enable

set backupcopy=yes
set ruler
set showcmd
set incsearch
set nocp
