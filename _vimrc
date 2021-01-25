set clipboard=unnamed
set nocompatible

" Provides tag completion
set path+=**
set wildmenu

nnoremap ,html :read C:\Users\Nelam\vimfiles\snippets\skeleton.html<CR>
nnoremap ,c :read C:\Users\Nelam\vimfiles\snippets\skeleton.c<CR>

syntax enable
filetype plugin on

syntax on

set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=$HOME/.vim/undodir
set undofile
set incsearch

"to high light trailing white space
autocmd ColorScheme * highlight ExtraWhitespace ctermbg = red guibg = red
au InsertLeave * match ExtraWhitespace /\s\+$/

colo sublimemonokai


"Leader key for vim
let mapleader = ","

"To move between splits
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

"Move between tabs
map <c-t> <esc>:tabnew<CR>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"Map to sort alphabetically
vnoremap <Leader>s :sort<CR>

"Easier indentation
vnoremap < <gv
vnoremap > >gv

"Disable backup and swap file system
set nobackup
set nowritebackup
set noswapfile

if has("gui_running")
    autocmd GUIEnter * set vb t_vb=
  if has("gui_gtk2")
    set guifont=Inconsolata\ 16
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h16
  elseif has("gui_win32")
    set guifont=Consolas:h15:cANSI
  endif
endif

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

let g:fugitive_git_executable = '"C:\\Program Files\\Git\\mingw64\\bin\\git.exe"'

"Plugin manager Vim-plug

call plug#begin('~/.vimfiles/plugged')

    Plug 'https://github.com/Yggdroot/indentLine.git'
    Plug 'https://github.com/vim-airline/vim-airline.git'

call plug#end()
