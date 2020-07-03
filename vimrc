set nocompatible

let vimrcpath = "~/.vimrc"

"" plugin management with vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'mileszs/ack.vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'

Plug 'Valloric/YouCompleteMe'
call plug#end()

"" syntax highlighting
if !exists("g:syntax_on")
    syntax enable
endif

"" indent settings
set autoindent
filetype plugin indent on
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set pastetoggle=<F2>

"" UI
set number
set cul " highlight current line
set incsearch " highlight search as you type
set ruler
set showmatch " matching brackets
" line length
set wrap
set colorcolumn=79

"" netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

"" search in many files
cnoreabbrev ack Ack
cnoreabbrev Ag Ack
cnoreabbrev ag Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"" tab navigation
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>

"" misc
set nomodeline

" trim trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"" clang-format binding
map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/share/clang/clang-format.py<cr>
