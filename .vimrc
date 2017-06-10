" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'davidhalter/jedi-vim'

" Python syntax checker
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

" YouCompleteMe Options
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" jedi-vim Settings
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = 0

" OmniComplete Options
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
set textwidth=79
set hlsearch

set tabstop=4
set expandtab
%retab!

if filereadable(expand('%:p<'))
    let g:c_syntax_for_h=1
endif

autocmd FileType c,cpp,R,r inoremap ' ''<ESC>i
autocmd FileType c,cpp,R,r inoremap " ""<ESC>i
autocmd FileType c,cpp,R,r inoremap ( ()<ESC>i
autocmd FileType c,cpp,R,r inoremap [ []<ESC>i
autocmd FileType c,cpp,R,r inoremap { {<CR>}<ESC>O

autocmd FileType python inoremap ' ''<ESC>i
autocmd FileType python inoremap " ""<ESC>i
autocmd FileType python inoremap ( ()<ESC>i
autocmd FileType python inoremap [ []<ESC>i
autocmd FileType python inoremap { {}<ESC>i
