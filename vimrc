""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Init
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Required for Vundle.
filetype off 

" Start of Vundle goodness.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Themes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Primary for terminal.
Plugin 'queyenth/oxeded.vim'

" Primary for gvim/MacVim
Plugin 'ajgrf/sprinkles'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vundle plugins.
Plugin 'VundleVim/Vundle.vim'

" PHP linter.
Plugin 'nrocco/vim-phplint'

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

" Ruby and Rails utilities. Tim Pope is God.
Plugin 'tpope/vim-fugitive'
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

" Nicer welcome screen.
Plugin 'mhinz/vim-startify'

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
" Appearance (as related to the oxeded theme)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight the current line and set the colour.
set cul

if !has('gui_running')
  hi CursorLine term=none cterm=none gui=none ctermbg=234 guibg=#1c1c1c guifg=#ffffff

  " Change matching bracket style.
  hi MatchParen cterm=bold ctermfg=0 ctermbg=15

  " Default theme.
  colors oxeded
endif

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

" Supertab.
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Disable markdown folding on load.
let g:vim_markdown_folding_disabled = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybinds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable the keybind to access ex mode.
nnoremap Q <Nop>

" Remap line-jump keys.
nnoremap B ^
nnoremap E $

" Toggle spellchecking.
nmap <leader>s :setlocal spell!<CR>

" Toggle highlighted results.
nmap <leader>h :nohlsearch<CR>

" Toggle line numbering style.
nmap <leader>r :set relativenumber!<CR>

" Toggle gutter vim diff highlights.
nmap <leader>gg :GitGutterToggle<CR>

" Tabs

" Open new tab.
nnoremap gn :tabnew<CR>

" NERDTree

" Toggle file tree.
nmap <leader>nn :NERDTreeToggle<CR>
" Find current open file.
nmap <leader>nf :NERDTreeFind<CR>
