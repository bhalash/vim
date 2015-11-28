" Set mode for backspace use
set nocompatible

"
" Vundle
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

" Autoamtically close braces and brackets
Plugin 'jiangmiao/auto-pairs'

" Supertab
Plugin 'ervandew/supertab'

" HTML and CSS auto-completion
Plugin 'mattn/emmet-vim'

" JSON parse plugin
Plugin 'elzr/vim-json'

" Fuzzy file matchng
Plugin 'kien/ctrlp.vim'

" Ruby and Rails utilities
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'

" Highlight matching HTML tags
Plugin 'gregsexton/MatchTag'

" HTML5 validation
Plugin 'bhalash/vim-htmlvalidator'

" Start Vundle goodness
call vundle#end()
filetype plugin indent on

"
" Syntax Checker Config
"

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"  
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

"
" CtrlP Config
"

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=node_modules
" Bind CtrlP to...Ctrl + P
let g:ctrlp_map = '<c-p>'
" Set default folder to starting folder.
let g:ctrlp_working_path_mode = 'ra'

"
" HTML5 Validator Config
"

au FileType html compiler html


"
" OS X Fixes
"

" Yank to OS X clipboard
set clipboard=unnamed

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

" Change vertical scrolling to respect the visual line.
nnoremap j gj
nnoremap k gk

" Open splits on right
set splitbelow
set splitright

" Remap line-jump keys.
nnoremap B ^
nnoremap E $

" Highlight last inserted block of characters.
nnoremap gV `[v`]`

" Autocomplete CSS.
filetype plugin on
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" 
" Search
"

" Search as I type, and highlight results.
set incsearch
set hlsearch

" Clear search.
command Cls let @/ = ""

"
" File Format
"

" Something I set in git changed line-endings to DOS. Bad Mark!
set ffs=unix,dos

" Toggle spell check.
command Tsp setlocal spell! spelllang=en_us

" 
" Indentation 
"

" Follow auto indent.
set autoindent

" Tabs
" Number of columns in a tab.
set tabstop=4
" Amount to indent on tab, << or >>
set shiftwidth=4
" Columns in insert mode. 
set softtabstop=4
" Replace tabs with spaces.
set expandtab

"
" Line Wrapping
"

" Wrap lines outside of words.
set wrap linebreak nolist

"
" Scrolling
"

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

" 
" gvim/MacVim
"

" Disable scrollbars.
set guioptions-=r
set guioptions-=L
