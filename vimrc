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
Plug 'tpope/vim-commentary'
Plug 'Valloric/YouCompleteMe'
call plug#end()

"" syntax highlighting and indentation
syntax enable
set autoindent
filetype plugin indent on

"" tab settings
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set pastetoggle=<F2>

"" UI
set nowrap
set number
set cul " highlight current line
set incsearch " highlight search as you type
set ruler
set showmatch " matching brackets

"" highlight the 81st column to show long lines
"if exists('+colorcolumn')
"  set colorcolumn=81
"  highlight ColorColumn ctermbg=red
"else
"  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"  match OverLength /\%81v.\+/
"endif

" trim trailing whitespace on save
"autocmd BufWritePre * :%s/\s\+$//e

"" clang-format binding
map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/share/clang/clang-format.py<cr>
