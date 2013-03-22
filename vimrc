set nocompatible	"who uses vi anyway

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

set backupcopy=yes 	"needed in MacVim
set noruler 		"so statusline will show up
set number		"show line numbers
set showcmd 		"show current command
set incsearch 		"search-as-you-type

"======= STATUS BAR =======
"(from isa/vim-vironment)

set laststatus=2
set statusline=
set statusline +=%4*\ %n%*              "buffer number
set statusline +=%7*\ \|\ %*
set statusline +=%1*%{&ff}\ %*          "file format
set statusline +=%5*%y%*                "file type
set statusline +=%7*\ \|\ %*
set statusline +=%3*%<%F%*              "full path
set statusline +=%6*\ %m%*              "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4c\ %*             "column number
set statusline +=%2*0x%04B\ %*          "character under cursor

hi User1 ctermbg=white ctermfg=black guifg=#eea040 guibg=#222222
hi User2 ctermbg=white ctermfg=black guifg=#a18c73 guibg=#222222
hi User3 ctermbg=white ctermfg=black guifg=#9dbddd guibg=#222222
hi User4 ctermbg=white ctermfg=black guifg=#666666 guibg=#222222
hi User5 ctermbg=white ctermfg=black guifg=#99cc33 guibg=#222222
hi User6 ctermbg=white ctermfg=black guifg=#ff4040 guibg=#222222
hi User7 ctermbg=white ctermfg=black guifg=#cccccc guibg=#222222
"===== END STATUS BAR =====

" ======= GENERAL SETTINGS =======

set foldcolumn=1 " this is just the console

set autochdir
au BufEnter * set expandtab ts=3 sw=3 sts=3
au BufEnter {*.rb} set ts=2 sw=2 sts=2
au BufNewFile * set fenc=utf-8 encoding=utf-8
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru} set ft=ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown} set ft=markdown
au BufRead,BufNewFile {*.rb} set ft=ruby ts=2 sw=2 sts=2
"au! BufNewFile * silent! 0r ~/.vim/skel/template.%:e

set hlsearch " for highlight
set incsearch " incremental search
set ignorecase " case insensitive search
set gdefault " global is default on search/replace
set wrapscan " Set the search scan to wrap around the file
set autoindent smartindent " sets the indentation for pasting code and stuff..

set showmatch " for paranthesis
set matchtime=5
set showmode " tell me which mode I'm in
set ruler " show current cursor pos

" Set screen scrolling rules
set scrolloff=3
set sidescrolloff=2

set nowrap
set linebreak " wrap lines at convenient places

set history=1000 "store lots of :cmdline history
set undolevels=1000 "as many as undos possible

set virtualedit=all
set vb " set the visual bell
set backspace=indent,eol,start " Allow backspacing over indent, eol, and the start of an insert
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class
"set list
"set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

set splitbelow
set splitright

set hidden "enables switching between buffers while having unsaved changes

" I hate backup files
set nobackup
set nowritebackup
set noswapfile

set pastetoggle=<F8> "enable paste toggle and map it to F8

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "fold nest level maximum is 10
set nofoldenable        "dont fold by default
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo " These commands open folds
set foldlevel=1

let g:netrw_dirhistmax=0 " Disables new read write history file creation (.newrwhist file)

"NERDTree
nmap <Leader>nt :NERDTree<CR>
