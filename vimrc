" Set mode for backspace use
set nocompatible

"
" Vundle
"
"

" Required for Vundle
filetype off 

" Init Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'

" git plugin
Plugin 'tpope/vim-fugitive'

" Snytax checker
Plugin 'scrooloose/syntastic'

" PHP linter
Plugin 'nrocco/vim-phplint'

" Colour scheme
Plugin 'queyenth/oxeded.vim'

" Better SCSS markup
Plugin 'cakebaker/scss-syntax.vim'

" Start Vundle goodness
call vundle#end()
filetype plugin indent on

"
" Syntax Checker Config
"
"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

"
" OS X Fixes
"

" Enable syntax highlighting
syntax on

" Stop annoying problem on OS X
" Arrow keybinds cause a status popup to appear when I tab back to vim.
set shortmess=a
let g:gitgutter_realtime = 0

" Change backspace for OSX 
set backspace=indent,eol,start

"
" Quality of Life
"
"
"" Clipboard to xclip
vmap "+y :!xclip -f -sel clip
map "+p :r!xclip -o -sel clip

" Open splits on right
set splitbelow
set splitright

" Autocomplete CSS.
set omnifunc=csscomplete#CompleteCSS

" Follow auto indent.
set autoindent

" Enable spell checking.
" setlocal spell spelllang=en_us

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Set padding when scrolling
set scrolloff=5
set sidescrolloff=5

" Scroll with mouse
set ttymouse=xterm2
set mouse=i

"
" Appearance
"

" Enable line numbers.
set nu

" Highlight the current line and set the colour
set cul
hi CursorLine term=none cterm=none ctermbg=234

" Default theme.
colors oxeded

" Enable ruler for column count
set ruler

" Enable statusbar.
set laststatus=2

" Change matching bracket style
highlight MatchParen cterm=bold ctermfg=black ctermbg=white
