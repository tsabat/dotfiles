set nocompatible
set number
set ruler
syntax on
let mapleader = ","

call pathogen#infect()
call pathogen#helptags()

set t_Co=256

"encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set list listchars=tab:\ \ ,trail:·
set autoindent          " always set autoindenting on
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" search stuff
" http://amix.dk/blog/post/19083
set incsearch
set hlsearch

"Status bar
let laststatus=2

"History stuff
set history=300          " keep 50 lines of command line history
set showcmd             " display incomplete commands

colorscheme railscasts

"http://www.vim.org/tips/tip.php?tip_id=696
" dont let mouse switch into selection mode
set mouse=a

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Toggle highlight search
map <Leader>z :set hls!<CR>

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python  set tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

"map for split movement
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-H> <C-W>h<C-W>
map <C-L> <C-W>l<C-W>

" gist stuff
let g:gist_detect_filetype = 1
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    " Do Mac stuff here
    let g:gist_clip_command = 'pbcopy'
  endif
endif

" ctlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
