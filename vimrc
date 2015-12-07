""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Required for Vundle.
filetype off 

" Start of Vundle goodness.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins.
Plugin 'VundleVim/Vundle.vim'

" git plugin.
Plugin 'tpope/vim-fugitive'

" PHP linter.
Plugin 'nrocco/vim-phplint'

" Colour scheme.
Plugin 'queyenth/oxeded.vim'

" Better SCSS markup.
Plugin 'cakebaker/scss-syntax.vim'

" Autoamtically close braces and brackets.
Plugin 'jiangmiao/auto-pairs'

" Supertab.
Plugin 'ervandew/supertab'

" HTML and CSS auto-completion.
Plugin 'mattn/emmet-vim'

" JSON parse plugin.
Plugin 'elzr/vim-json'

" Fuzzy file matchng.
Plugin 'kien/ctrlp.vim'

" Ruby and Rails utilities. Tim Pope is God, apparently.
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'

" Highlight matching HTML tags.
Plugin 'gregsexton/MatchTag'

" HTML5 validation.
Plugin 'bhalash/vim-htmlvalidator'

" Folder browser.
Plugin 'scrooloose/nerdtree'

" Toggle comments.
Plugin 'tomtom/tcomment_vim'

" Diff git files live.
Plugin 'airblade/vim-gitgutter'

" End of Vundle goodness.
call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core Vim Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" No need to be vi compatible. I mean, it's almost 2016.
set nocompatible

" Ignore common temp files and directories.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cache,*.bak,*.pyc,*.class
set wildignore+=node_modules

" Menu display output.
set wildmenu
set wildmode=list:full 

" HTML validation.
au FileType html compiler html

" Undo history.
set history=1000
set undolevels=1000

" Keep a persistent backup file.
set undofile                
set undodir=~/.vim/.undo,~/tmp,/tmp

" Disable swap files.
set nobackup
set noswapfile

" Set a directory in case they *are* turned on.
set directory=~/.vim/.tmp,~/tmp,/tmp

" Yank to clipboard.
set clipboard=unnamed

" Enable syntax highlighting.
syntax on

" Backspace will delete.
set backspace=indent,eol,start


" Set relative numbering and toggle keybind.
set relativenumber

" Open split below and to the right instead of up and to the left.
set splitbelow
set splitright

" Remap line-jump keys.
nnoremap B ^
nnoremap E $

" Highlight last inserted block of characters.
nnoremap gV `[v`]`

" Search as I type, and highlight results.
set incsearch
set hlsearch

" Something I set in git changed line-endings to DOS. Bad Mark!
set ffs=unix,dos

" Follow auto indent.
set autoindent

" Number of columns in a tab.
set tabstop=4

" Amount to indent on tab, << or >>.
set shiftwidth=4

" Columns in insert mode. 
set softtabstop=4

" Replace tabs with spaces.
set expandtab

" Wrap lines outside of words.
set wrap linebreak nolist

" Set padding when scrolling.
set scrolloff=5
set sidescrolloff=5

" Scroll with mouse.
set ttymouse=xterm2
set mouse=i

" Increase scroll speed.
set ttyfast

" Change how buffer is redrawn. /Should/ increase scroll speed.
set lazyredraw

" Remap the leaader key to a comma.
let mapleader=','

" Enable line numbers.
set nu

" Enable ruler for column count.
set ruler

" Enable statusbar.
set laststatus=2

" Searches are assumed to be global on a line.
set gdefault

" ex mode reads the top n lines of a file.
set modelines=0

" Autocomplete CSS.
set omnifunc=syntaxcomplete#Complete

" Stop annoying problem on OS X.
" Arrow keybinds cause a status popup to appear when I tab back to vim.
set shortmess=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
" (tied/related to the oxeded theme)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Default theme.
colors oxeded

" Highlight the current line and set the colour.
set cul
hi CursorLine term=none cterm=none ctermbg=234

" Change matching bracket style.
highlight MatchParen cterm=bold ctermfg=black ctermbg=white

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Bind CtrlP to...Ctrl + P.
let g:ctrlp_map = '<c-p>'
" Set default folder to starting folder.
let g:ctrlp_working_path_mode = 'ra'

" Ignore Rails temp and documentation files.
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](tmp|doc)$',
  \ 'file': '\v\.(cache)$', 
  \ }

" Gitgutter.
let g:gitgutter_realtime = 0

" Supertab.
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"
" Normal-mode Keybinds.
"

" Toggle spellchecking.
nmap \s :setlocal spell!<CR>

" Toggle highlighted results.
nmap \h :nohlsearch<CR>

" Toggle line numbering style.
nmap \r :set relativenumber!<CR>

" Toggle file tree.
nmap \t :NERDTreeToggle<CR>

" Toggle gutter vim diff highlights.
nmap \g :GitGutterToggle<CR>
