set nocompatible              " be iMproved, required
filetype off                  " required
set ruler
set bg=dark
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin on

if &term=="xterm"
     set t_Co=8
     set t_Sb=^[[4%dm
     set t_Sf=^[[3%dm
endif

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'chase/vim-ansible-yaml'
Plugin 'itchyny/lightline.vim'

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
"
"
"
execute pathogen#infect()
syntax on
filetype plugin indent on

let g:ansible_options = {'ignore_blank_lines': 0}
let g:lightline = {'colorscheme': 'wombat' }
colo koehler
syntax on
set noshowmode
set laststatus=2
set cursorline
set paste
noremap { gT
noremap } gt
nnoremap <c-d> "=strftime("%c")<CR>
inoremap <c-d> <C-R>=strftime("%c")<CR>
map <C-a> <esc>ggVG<CR>
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
nnoremap <C-t>  :tabnew<CR>
