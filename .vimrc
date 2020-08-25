set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'

Plugin 'rust-lang/rust.vim'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'

Plugin 'itspriddle/vim-shellcheck'

Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set background=dark encoding=utf-8 number nomodeline hidden

:color desert

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='jellybeans'
let g:syntastic_python_checkers = ['flake8']
let g:ycm_autoclose_preview_window_after_insertion = 1

" Configuration for splits and split navigation
set splitbelow
set splitright

noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

" Enable folding

set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar

nnoremap <space> za


" Uppercase the current word in insert mode and move to the
" word end
inoremap <C-U> <esc>viwUei

" Uppercase the current word in normal mode and move to the
" word end
nnoremap <C-U> viwUe<esc>

" General indent rules for files
augroup indentrules
	autocmd BufNewFile,BufRead *.js, *.html, *.md, *.css, *.yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 textwidth=120 expandtab fileformat=unix
augroup END

" Group for nerdtree
augroup nerdtree
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
augroup END

