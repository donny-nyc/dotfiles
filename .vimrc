set nocompatible              " be iMproved, required
filetype off                  " required


set exrc " allows loading local rc files
set secure " no :autocmd, shell or writes in local .vimrc

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'git@github.com:ycm-core/YouCompleteMe.git'
Plugin 'git@github.com:dense-analysis/ale.git'
Plugin 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plugin 'git@github.com:albfan/ag.vim.git'
Plugin 'git@github.com:preservim/nerdtree.git'

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:ale_linters = {
      \   'ruby': ['rubocop'],
      \   'javascript': ['eslint'],
      \}
"let g:ale_linters = {
"			\		'c': ['clang'],
"			\		'c++': ['clang'],
"      \   'ruby': ['rubocop'],
"      \   'javascript': ['eslint'],
"      \}
let g:ale_fixers = {
      \    'ruby': ['rubocop'],
      \    'javascript': ['eslint'],
			\}

"let g:ale_fixers = {
"		  \		 'c': ['clangtidy'],
"		  \		 'c++': ['clangtidy'],
"      \    'ruby': ['rubocop'],
"      \    'javascript': ['eslint'],
"      \}

let g:ale_fix_on_save = 1

let g:ycm_global_ycm_extra_conf = '$HOME/.vim/ycm_extra_conf/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1

set tabstop=2 shiftwidth=2
set incsearch ignorecase hlsearch
set noexpandtab
" Press space to clear highlighting
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

set number
set showcmd

set ruler

set magic

syntax enable

colorscheme pablo

set path=$PWD/**

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" nnoremap <C-ALT-d> :.!date -I<CR>
" nnoremap <C-S-d> :.!date<CR>

set clipboard=unnamed " use system clipboard
