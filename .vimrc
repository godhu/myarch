" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on

let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 1

set completeopt=menu,menuone

set t_Co=256
set background=dark
colorscheme solarized

set encoding=utf-8
syntax on
set nu
set history=1000
set autoindent
set showcmd
set showmatch
set matchtime=2
set shiftwidth=4
set mouse=a

set tabstop=4
set expandtab
%retab!

if filereadable(expand('%:p<'))
    let g:c_syntax_for_h=1
endif

autocmd FileType c,cpp inoremap ' ''<ESC>i
autocmd FileType c,cpp inoremap " ""<ESC>i
autocmd FileType c,cpp inoremap ( ()<ESC>i
autocmd FileType c,cpp inoremap [ []<ESC>i
autocmd FileType c,cpp inoremap { {<CR>}<ESC>O

autocmd FileType python inoremap ' ''<ESC>i
autocmd FileType python inoremap " ""<ESC>i
autocmd FileType python inoremap ( ()<ESC>i
autocmd FileType python inoremap [ []<ESC>i
autocmd FileType python inoremap { {}<ESC>i
