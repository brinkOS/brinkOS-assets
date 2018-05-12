syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
execute pathogen#infect()
let g:airline_powerline_fonts = 1
set background=dark
colorscheme monokai
let g:airline_theme="luna"
set number
map <C-n> :NERDTreeToggle<CR>

if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 " brinkOS specific selections
 call dein#add('martinda/Jenkinsfile-vim-syntax.git')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable
