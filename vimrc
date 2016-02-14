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

" Termschool Theme
Plugin 'marcopaganini/termschool-vim-theme'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vundle plugins.
Plugin 'VundleVim/Vundle.vim'

" Better SCSS markup.
Plugin 'cakebaker/scss-syntax.vim'

" Quickly change wrapping characters.
Plugin 'tpope/vim-surround'

" Supertab.
Plugin 'ervandew/supertab'

" HTML and CSS auto-completion.
Plugin 'mattn/emmet-vim'

" JSON parse plugin.
Plugin 'elzr/vim-json'

" Fuzzy file matchng.
Plugin 'ctrlpvim/ctrlp.vim'

" CTAGS.
Plugin 'szw/vim-tags'

" Ruby and Rails utilities. Tim Pope is God.
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'

" Toggle comments.
Plugin 'tomtom/tcomment_vim'

" Diff git files live.
Plugin 'airblade/vim-gitgutter'

" Nicer welcome screen.
Plugin 'mhinz/vim-startify'

" Uber statusline.
Plugin 'bling/vim-airline'

" ZSH syntax.
Plugin 'clones/vim-zsh'

" End of Vundle goodness.
call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core Vim Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" No need to be vi compatible. I mean, it's almost 2016.
set nocompatible

" Yank to system clipboard.
set clipboard=unnamed

" Enable syntax highlighting.
syntax on

" Backspace will delete.
set backspace=indent,eol,start

" Set relative numbering and toggle keybind.
set relativenumber

" Open split below and to the right instead of up and to the left.
set splitbelow splitright

" Something I set in git changed line-endings to be DOS-only. Bad Mark!
set ffs=unix,dos

" Follow auto indent.
set autoindent

" Wrap lines outside of words.
set wrap linebreak nolist

" Enable line numbers.
set nu

" Enable ruler for column count.
set ruler

" Enable statusbar.
set laststatus=2

" ex mode reads the top n lines of a file.
set modelines=0

" Stop annoying problem on OS X.
" Arrow keybinds cause a status popup to appear when I tab back to vim.
set shortmess=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scrolling and Mice
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set padding when scrolling.
set scrolloff=5 sidescrolloff=5

" Scroll with mouse.
set ttymouse=xterm2 mouse=i

" Increase scroll speed.
set ttyfast

" Change how buffer is redrawn. /Should/ increase scroll speed.
set lazyredraw

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore common temp files and directories.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cache,*.bak,*.pyc,*.class
set wildignore+=node_modules

" Menu display output.
set wildmenu wildmode=list:full

" Search as I type, and highlight results.
set incsearch hlsearch

" Searches are assumed to be global on a line.
set gdefault

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filesystem and History
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" More frequent saves.
set updatecount=50

" Undo history.
set history=2000 undolevels=2000

" Keep a persistent backup file.
set undofile undodir=~/.vim/.undo,~/tmp,/tmp

" Disable swap files.
set nobackup noswapfile

" Set a directory in case they *are* turned on.
set directory=~/.vim/.tmp,~/tmp,/tmp

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabbing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab ts=4 sw=4 sts=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance (as related to the oxeded theme)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight the current line and set the colour.
set cul

if !has('gui_running')
  function! Termschool()
    " Termschool theme.
    colors termschool
    hi LineNr ctermfg=250 ctermbg=none
    hi CursorLine ctermfg=none ctermbg=238

    " For GitGutter
    hi clear SignColumn
    hi GitGutterAdd ctermfg=green
    hi GitGutterChange ctermfg=yellow
    hi GitGutterDelete ctermfg=red
    hi GitGutterChangeDelete ctermfg=yellow
  endfunction

  function! Oxeded()
    " Oxeded theme.
    hi MatchParen cterm=bold ctermfg=0 ctermbg=15
    hi CursorLine term=none cterm=none ctermbg=234
    colors oxeded
  endfunction

  " call Oxeded()
  call Termschool()
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Reduce timeout length on keystrokes. This is mostly for vim-airline.
set ttimeout ttimeoutlen=50

if exists('g:ctrl_user_command')
  " Remove any blockers which prevent wildignore from not working.
  " May lead to a dramatic increase in CtrlP performance.
  unlet g:ctrlp_user_command
endif

" Bind CtrlP to <leader>
let g:ctrlp_map = '<leader>p'
" Set default folder to starting folder.
let g:ctrlp_working_path_mode = 0

" Reuse the Startify window when files are opened with CtrlP, instead of
" opening them inside a split.
let g:ctrlp_reuse_window  = 'startify'

" Ignore Rails temp and documentation files.
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](tmp|doc)$',
  \ 'file': '\v\.(cache)$'
  \ }

" Disable markdown folding on load.
let g:vim_markdown_folding_disabled = 1

" Generate CTAGS upon file save.
let g:vim_tags_auto_generate = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Supertab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:SuperTabContextDefaultCompletionType = "<c-p>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabLongestEnhanced = 1

" Supertab.
let g:SuperTabDefaultCompletionType = "context"

let g:SuperTabCompletionContexts = [
  \ 's:ContextText',
  \ 's:ContextDiscover'
  \ ]

let g:SuperTabContextTextOmniPrecedence = [
  \ '&completefunc',
  \ '&omnifunc'
  \ ]

let g:SuperTabContextDiscoverDiscovery = [
  \ '&completefunc:<c-x><c-u>',
  \ '&omnifunc:<c-x><c-o>'
  \ ]

autocmd FileType *
  \ if &omnifunc != '' |
  \ call SuperTabChain(&omnifunc, "<c-p>") |
  \ call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
  \ endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:startify_custom_header = [
  \ '             __                  ',
  \ '    __  __  /\_\     ___ ___     ',
  \ '   /\ \/\ \ \/\ \  /` __` __`\   ',
  \ '   \ \ \_/ | \ \ \ /\ \/\ \/\ \  ',
  \ '    \ \___/   \ \_\\ \_\ \_\ \_\ ',
  \ '     \/__/     \/_/ \/_/\/_/\/_/ v.' . version,
  \ '   -----------------------------------',
  \ '   ' . system('echo -n "${USERNAME}@$(hostname -s) in ${PWD}"'),
  \ ''
  \ ]

let g:startify_custom_footer = [
  \ '',
  \ "   Vim is charityware. Please read ':help uganda'.",
  \ '',
  \ ''
  \ ]

let g:startify_bookmarks = [
  \ {'v': '~/.vim/vimrc'},
  \ {'g': '~/.vim/gvimrc'},
  \ {'z': '~/.zsh/zshrc'}
  \ ]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybinds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<Space>"

" Disable the keybind to access ex mode.
nnoremap Q <Nop>

" Remap line-jump keys.
nmap B ^
nmap E $

" Split file.
nmap <silent><leader>v <C-w>v<C-w>l

" Toggle spellchecking.
nmap <leader>sp :setlocal spell!<CR>

" Toggle highlighted results.
nmap <silent><BS>  :nohlsearch<CR>

" Toggle line numbering style.
nmap <silent><leader>r :set relativenumber!<CR>

" Toggle gutter vim diff highlights.
nmap <leader>gg :GitGutterToggle<CR>

" Reset current file to its last committed state.
nmap <leader>gr :!git checkout %<CR>

" Replacements

" Empty line of content without removing line ending.
nmap <leader>dl :s/.*//<CR> :noh<CR>

" Strip trailing whitespace from the file.
nmap <leader>W :%s/\s\+$//<CR>:let @/=''<CR> :noh<CR>

" Delete all leading spaces on a line.
nmap <silent><leader>d<space> :s/^\s\+//<CR> :noh<CR>

" Tabs

" Open and close new tab.
nmap <silent><leader>tt :tabnew<CR>
nmap <silent><leader>tw :tabclose<CR>

" Next/previous tab.
nmap <silent><leader><Left> :tabprevious<CR>
nmap <silent><leader><Right> :tabnext<CR>

" Miscellaneous Plugins

" Return to Startify screen.
nmap <leader>ss :Startify<CR>
