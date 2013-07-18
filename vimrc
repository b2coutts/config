set bg=dark
set ts=4
set shiftwidth=4
set number
set rnu
set numberwidth=2
set backspace=2
set nocompatible
set autoindent
set expandtab
set smarttab

syntax on
au BufNewFile,BufRead *.rkt set ts=2 sw=2
au BufNewFile,BufRead *.tex set filetype=tex tw=80
au BufNewFile,BufRead *.txt set tw=80
au BufNewFile,BufRead *.nl set filetype=racket

noremap <F1> 
nnoremap <F4> :!pdflatex %<CR><CR>
nnoremap <F5> :!zsh<CR><CR>
inoremap <F5> <ESC>:!zsh<CR><CR>a
nnoremap d_ v_d
nnoremap c_ v_c
inoremap kj <ESC>
inoremap jk <ESC>
nnoremap <C-j> gj
nnoremap <C-k> gk
nnoremap <C-y> "*y
nnoremap <C-p> "*p

nnoremap >> :<C-u>exec repeat('>',v:count1)<CR>
nnoremap << :<C-u>exec repeat('<',v:count1)<CR>

call pathogen#infect()
