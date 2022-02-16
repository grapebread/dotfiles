set nu
set encoding=utf-8
set termguicolors
set noshowmode
set laststatus=2
let mapleader=','
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

nnoremap <Leader>> gt
nnoremap <Leader>< gT
nnoremap <Leader>nt :tabedit 
nnoremap <Leader>dt :tabclose<cr>

inoremap <Leader>b ****<Esc>2ha
inoremap <Leader>i **<Esc>ha

" vim-powered terminal in split window
map <Leader>t :term ++close<cr>
tmap <Leader>t <c-w>:term ++close<cr>

" plugin installs
call plug#begin('~/.vim/plugged')
Plug 'justinmk/vim-dirvish'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'srcery-colors/srcery-vim'
Plug 'itchyny/lightline.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }
Plug 'gabrielelana/vim-markdown'
call plug#end()

source ~/.vim/coc.vim
source ~/.vim/md-preview.vim

colorscheme srcery

let g:lightline = {'colorscheme': 'srcery'}
