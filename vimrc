set nocompatible "  no vi compatibility

""syntax highlighting and indentation
syntax enable
set autoindent
filetype plugin indent on

""Tab settings
set expandtab
set tabstop=4
set shiftwidth=4

" trim trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

""UI
set number
set cul " highlight current line
set incsearch " highlight search as you type
set ruler
set showmatch " matching brackets

""highlight the 81st column to show long lines
if exists('+colorcolumn')
  set colorcolumn=81
  highlight ColorColumn ctermbg=red
else
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%81v.\+/
endif

"" clang-format binding
map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/share/clang/clang-format.py<cr>
