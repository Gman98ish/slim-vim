"" Tabs now make sense
set tabstop=4
set shiftwidth=4
set expandtab

"" Automatically moves your cursor to the right place after putting a newline
set autoindent

"" Allows you to tab through multiple search results
set wildmenu

"" Makes most custom bindings start with ,
let mapleader = ","

"" Easy way of going back to normal mode without having to go *all the way over* to esc
inoremap jf <esc>

"" Acts as a fuzzy search. Type in the partial name of the file and hit <tab>
nnoremap <leader><leader> :e **/*

"" Easy way of removing the highlight after searching for something with /
nnoremap <leader><space> :nohl<cr>

"" No more pesky shift
nnoremap ; :

"" Easier tab managemnt
"" Ctrl+N - new tab
"" Ctrl-l - next tab
"" Ctrl-h - previous tab
nnoremap <C-n> :tabnew<cr>
nnoremap <C-l> :tabn<cr>
nnoremap <C-h> :tabp<cr>
