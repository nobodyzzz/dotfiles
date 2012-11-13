set nocompatible
"pathogen stuff 
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"Get that filetype stuff happening"
filetype on
filetype plugin on
filetype plugin indent on

set hidden

syntax on
set guioptions=ac "hide menu
colorscheme desert"molokai
set nu
set guifont=Monaco:h14
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
"set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk

let mapleader = ","

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <esc> :noh<return><esc>
nnoremap <tab> %
vnoremap <tab> %

au FocusLost * :wa
"quicl escape to normal mode
inoremap jj <ESC>
inoremap kk <ESC>
"NERDtree stuff
map <F2> :NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$','\.rar$', '\.exe$', '\.zip$', '\.chm$', '\.pdf$', '\.dll$', '\.doc$', '\.gif$', '\.jpg$', '\.jpeg$', '\.djvu$', '\.crx$', '\.torrent$', '\.7z$', '\.mp3$', '\.png$', '\.xls$', '\.xlsx$', '\.docx$', '\.ncb$', '\.suo$', '\.pdb$', '\.avi$', '\.mpg$', '\.mp4$', '\.mkv$', '\.flv']
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
"toogle relativenumber
map <silent> <F1> :if &relativenumber <Bar>
    \set nornu <Bar>
    \set nu <Bar>
        \else <Bar>
    \set rnu <Bar>
        \endif<cr>

"windows stuff
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" get rid of the silly characters in window separators
set fillchars=""
" Rainbows!
nmap <leader>R :RainbowParenthesesToggle<CR>
"fold xml/html tag
nnoremap <leader>ft Vatzf
"scratch buffer
nmap <leader><tab> :Sscratch<crj<C-W>x<C-j>:resize 15<cr>
"YankRing stuff
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
"visual shifting (builtin-repeat)
vnoremap < <gv
vnoremap > >gv
" Text bubbling
" Move line up
nnoremap <C-up> :m-2<cr>
" Move line down
nnoremap <C-down> :m+<cr>
" Move visual selection up
vnoremap <C-up> :m-2<cr>gv
" Move visual selection down
vnoremap <C-down> :m'>+<cr>gv
"grepping
cabbrev lvim
      \ lvim /\<lt><C-R><C-W>\>/gj
      \ *<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
      \ <Bar> lw
      \ <C-Left><C-Left><C-Left>

set dir=~/.vim/swap//
set undodir=~/.vim/undo//
set colorcolumn=100
au FileType python set colorcolumn=80
if has("gui_running")
  let g:Powerline_symbols = 'fancy'
  set cursorline
endif
runtime macros/matchit.vim
