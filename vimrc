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

" Colours for terminal vim.
Plugin 'marcopaganini/termschool-vim-theme'
Plugin 'w0ng/vim-hybrid'
Plugin 'andreasvc/vim-256noir'

" Colours for gvim/MacVim.
Plugin 'mkarmona/colorsbox'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Better FfTt action.
Plugin 'rhysd/clever-f.vim'

" Auto CD to project root.
Plugin 'airblade/vim-rooter'

" For WordPress development.
Plugin 'dsawardekar/wordpress.vim'

" Vundle plugins.
Plugin 'VundleVim/Vundle.vim'

" Better SCSS markup.
Plugin 'cakebaker/scss-syntax.vim'

" Slim syntax highlighting.
Plugin 'slim-template/vim-slim'

" Quickly change wrapping characters.
Plugin 'tpope/vim-surround'

" Supertab.
Plugin 'ervandew/supertab'

" HTML and CSS auto-completion.
Plugin 'mattn/emmet-vim'

" Markdown and distraction-free writing.
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/goyo.vim'

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

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'drjova/airline-drjova'

" ZSH syntax.
Plugin 'clones/vim-zsh'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End Vundle Init
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" End of Vundle goodness.
call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core Vim Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set term colours.
set t_Co=256 background=dark

" No need to be vi compatible. I mean, it's 2016.
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
set scrolloff=10 sidescrolloff=10

" Scroll with mouse in insert mode.
set ttymouse=xterm2 mouse=i

" Increase scroll speed.
set ttyfast

" Change how buffer is redrawn. /Should/ increase scroll speed.
set lazyredraw

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completion and Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore common temp files and directories.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cache,*.bak,*.pyc,*.class
set wildignore+=node_modules

" Menu display output.
set wildmenu wildmode=list:full

" Search as I type, and highlight results.
set incsearch smartcase hlsearch

" Searches are assumed to be global on a line.
set gdefault

" Tabbing
set expandtab ts=4 sw=4 sts=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Saving, Filesystem and History
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Save file when it loses focus.
set autowrite

" More frequent saves and bigger undo history.
set updatecount=50 history=2000 undolevels=2000

" Keep a persistent backup file.
set undofile undodir=.undo,~/tmp,/tmp

" Disable swap files.
set nobackup noswapfile

" Set a directory in case they *are* turned on.
set directory=~/.vim/.tmp,~/tmp,/tmp

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybinds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<space>"

" <c-w> is difficult for me to reach given my handedness and keyboard.
nmap <leader><space> <c-w>

" Disable the keybind to access ex mode.
nnoremap Q <Nop>

" Remap line-jump keys.
nmap B ^
nmap E $

" Split file.
nmap <silent><leader>v <c-w>v<c-w>l

" Toggle spellchecking.
nmap <leader>sp :setlocal spell!<CR>

" Toggle highlighted results.
nmap <silent><bs> :nohlsearch<CR>

" Shorter global search.
nmap S :%s//g<left><left>

" Toggle line numbering style.
nmap <silent><leader>r :set relativenumber!<CR>

" Reset current file to its last committed state.
nmap <leader>gr :!git checkout %<CR>

" Empty line of content without removing line ending.
nmap <leader>dl :s/.*//<CR> :noh<CR>

" Strip trailing whitespace from the file.
nmap <leader>W :%s/\s\+$//<CR>:let @/=''<CR> :noh<CR>

" Delete all leading spaces on a line.
nmap <silent><leader>d<space> :s/^\s\+//<CR> :noh<CR>

" Quickly yank all lines in the file.
nmap <leader>yy :%y+<CR>

" Replace all lines in the file with the contents of the clipboard.
nmap <silent><leader>rp gg"_dGVp

" Fix the entire indentation of a file according to your tab rules.
nmap <leader>ind gg=G

" Open and close new tab.
nmap <silent><leader>tt :tabnew<CR>:Startify<CR>
nmap <silent><leader>tw :tabclose<CR>

" Progress forward and backwards with multiple panes open.
nmap <silent><leader>r :prev<CR>
nmap <silent><leader>n :n<CR>

" Reset clever-f motions.
nmap <leader>f <Plug>(clever-f-reset)

" Stop * searches jumping word.
nnoremap * *``

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Keybinds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Startify
nmap <silent><leader>ss :Startify<CR>

" GitGutter
nmap <leader>gg :GitGutterToggle<CR>

" CtrlP
nmap <leader>5 :CtrlPClearCache<CR>

" Goyo
nmap <silent><leader>go :Goyo<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shorthand Colorcolumn Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! RightRuler(...)
  let &l:colorcolumn = a:0 > 0 ? 0 + a:1 : 0
endfunction

command! -nargs=? CC call RightRuler(<f-args>)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Plugin Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Reduce timeout length on keystrokes. This is mostly for vim-statusline.
set ttimeout ttimeoutlen=50

" Disable markdown folding on load.
let g:vim_markdown_folding_disabled = 1

" Generate CTAGS upon file save.
let g:vim_tags_auto_generate = 1

" Silently auto CD to the root folder of the current git project.
let g:rooter_silent_chdir = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Goyo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:goyo_width = 170
let g:goyo_height = 90
let g:goyo_linenr = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable Airline for buffers in the tablike.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#branch#format = 0

" Enable powerline fonts.
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Supertab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:SuperTabContextDefaultCompletionType = '<c-p>'
let g:SuperTabLongestHighlight = 1
let g:SuperTabLongestEnhanced = 1

" Supertab.
let g:SuperTabDefaultCompletionType = 'context'

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
      \ call SuperTabChain(&omnifunc, '<c-p>') |
      \ call SuperTabSetDefaultCompletionType('<c-x><c-u>') |
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
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight the current line and set the colour.
set cul

function! s:gitgutter_reset()
  hi clear LineNr
  hi clear SignColumn
  hi GitGutterAdd           cterm=none    ctermbg=none    ctermfg=46      gui=none      guifg=#00ff00
  hi GitGutterChange        cterm=none    ctermbg=none    ctermfg=45      gui=none      guifg=#00d7ff
  hi GitGutterChangeDelete  cterm=none    ctermbg=none    ctermfg=11      gui=none      guifg=#ffff00
  hi GitGutterDelete        cterm=none    ctermbg=none    ctermfg=196     gui=none      guifg=#ff0000
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorsbox // gui-first
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:colorsbox_patch()
  call s:gitgutter_reset()
  hi TabLineFill guifg=#ffffff guibg=#1d1f21
  hi TabLineSel guifg=#1d1f21 guibg=#ffffff
  let g:airline_theme='jellybeans'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Termschool // term-first
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:termschool_path()
  call s:gitgutter_reset()
  hi LineNr ctermfg=250 ctermbg=none guifg=#bcbcbc guibg=none
  hi CursorLine ctermfg=none ctermbg=238 guifg=none guibg=#444444
  let g:airline_theme='drjova'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hybrid // term-first
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:hybrid_patch()
  call s:gitgutter_reset()
  hi Normal ctermbg=none
  hi ColorColumn ctermbg=88
  hi LineNr ctermfg=241
  hi CursorLine ctermbg=238
  hi CursorLineNr ctermbg=238
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme Autocmd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd! ColorScheme hybrid call s:hybrid_patch()
autocmd! ColorScheme 256_noir call s:256_noir_patch()
autocmd! ColorScheme termschool call s:termschool_patch()
autocmd! ColorScheme colorsbox-stnight call s:colorsbox_patch()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Call Default Colourscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" colorscheme 256_noir
colorscheme hybrid
