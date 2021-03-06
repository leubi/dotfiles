" Make vim more useful
call pathogen#infect()
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
filetype plugin indent on

" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=" "
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set nobackup
set noswapfile
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
" Expand Tab to spaces
set expandtab
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
if exists("&relativenumber")
  " Use relative line numbers
  set relativenumber
  au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

".pde arduino file syntax
"autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>
map <leader>n <plug>NERDTreeTabsToggle<CR>
let coffee_make_options = '--bare -o ../dist/'

" get all .vim/bundle items

set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set background=dark
colorscheme base16-tomorrow
" Set a nice Font
let g:airline_theme="tomorrow"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

"let g:Powerline_symbols='compatible'
set guifont=Source\ Code\ Pro\ for\ Powerline\ 12
if has("gui_gtk2")
  let g:airline_powerline_fonts=1
  set guifont=Source\ Code\ Pro\ for\ Powerline\ 12
elseif has("gui_macvim")
    set guifont=Consolas:h12
elseif has("gui_win32")
    set guifont=Consolas:h11
end

let g:syntastic_javascript_checkers = ['eslint']

" no gui toolbar
set guioptions-=T
set guioptions-=t
" no menu
set guioptions-=m
" easy buffer navigation
map <F1> :bp<CR>
map <F2> :bn<CR>

map <leader>h :bp<CR>
map <leader>l :bn<CR>

"au BufWritePost .vimrc so ~/.vimrc

let NERDTreeMinimalUI=1

set wildignore+=*/tmp/*,*.so,*.swp.,*.zip,.git/*,*/node_modules/*
set smartindent
set lazyredraw
set hidden