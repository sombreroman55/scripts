" Personal vim configuration file
" Written by Andrew Roberts, 2017

" welcome message
:echo '(>^.^<) Nyaa~~'

" Pathogen ------------------------------------------{{{
set nocompatible
filetype off
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
" }}}

" UI Settings ------------------------------------------{{{
set number						" show line numbers
set relativenumber				" show line numbers relative to cursor
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set wildmenu                    " visual autocomplete for command menu
set numberwidth=8				" width of line number column
set shiftround
set shiftwidth=4
set tabstop=4					" number of visual spaces per tab
set softtabstop=4				" number of spaces in tab when editing
set expandtab					" tabs are spaces
set showmatch                   " show matching brackets
set matchtime=3					" matching bracket display time
set autoindent					" autoindent
set lazyredraw					" redraw only when necessary
syntax enable					" turn on syntax highlighting
set background=dark				" background setting
let g:termcolors=256			" termcolors for colorschemes
colorscheme gruvbox 			" flavor of the month
" }}}

" Status Line -----------------------------------------------------{{{

" }}}

" Airline --------------------------------------------{{{
let g:airline_theme='tomorrow'
" }}}

" Control settings --------------------------------------{{{
set backspace=2					" backspace works as normal
" }}}

" Key mappings --------------------------------------{{{
:let mapleader = "-"
:let maplocalleader = "\\"
:noremap <leader>- ddp
:noremap <leader>_ ddkkp
:inoremap <c-u> <esc>bvwU<esc>i
:nnoremap <c-u> bvwU<esc>
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
:inoremap jk <esc>
:inoremap <esc> <nop>
:nnoremap <Up> <nop>
:nnoremap <Down> <nop>
:nnoremap <Left> <nop>
:nnoremap <Right> <nop>
:inoremap <Up> <nop>
:inoremap <Down> <nop>
:inoremap <Left> <nop>
:inoremap <Right> <nop>
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
:onoremap p i(
" }}}

" Autocommands --------------------------------------{{{
" Allow code folding in this vim file
augroup filetype_vim
	autocmd!
	autocmd Filetype vim setlocal foldmethod=marker
augroup END

" Quick comment commands based on programming language of file
augroup comments
	autocmd!
	autocmd FileType c          nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
augroup END

" Set specific file types to not wrap their text
augroup wrappers
    autocmd!
    autocmd BufNewFile,BufRead *.html setlocal nowrap
    autocmd BufNewFile,BufRead *.tex setlocal nowrap
augroup END
" }}}

" Backups -------------------------------------------------------{{{
if has ("vms")
    set nobackup        " do not keep a backup file, use versions instead
else
    set backup          " keep a backup file (restore to previous version)
    if has ('persistent_undo')
        set undofile    " keep an undo file (undo changes after closing)
    endif
endif
" }}}
