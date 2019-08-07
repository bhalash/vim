""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Init
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" Colours for gvim/MacVim.
Plugin 'mkarmona/colorsbox'
Plugin 'phanviet/Sidonia'
Plugin 'arcticicestudio/nord-vim'
" Plugin 'nightsense/snow'
" Plugin 'nightsense/vrunchbang'
" Plugin 'kadekillary/skull-vim'

" Asynchronous syntax checking and linting.
Plugin 'w0rp/ale'

" RAWEAJEFLSEFASLefSJEFSefsef
Plugin 'bronson/vim-trailing-whitespace'

" Provide additional text targets for di/a<char>:
" , . ; : + - = ~ _ * # / | \ & $
Plugin 'wellle/targets.vim'

" Provide motion keyed to gs<motion> to sort stuff.
Plugin 'christoomey/vim-sort-motion'

" Better search highlighting.
" Plugin 'timakro/vim-searchant'

" Better FfTt action.
Plugin 'unblevable/quick-scope'

" Auto CD to project root.
Plugin 'airblade/vim-rooter'

" Vundle.
Plugin 'VundleVim/Vundle.vim'

" Quickly change wrapping characters with cs<char>.
Plugin 'tpope/vim-surround'

" Case-insensitive replacement
Plugin 'tpope/vim-abolish'

" Authoring (Markdown and article writing).
Plugin 'junegunn/goyo.vim'

" Quickly search for and open files in the current buffer, new split or tab.
Plugin 'kien/ctrlp.vim'

" Grep through and open files.
Plugin 'mileszs/ack.vim'

" Auto pair brackets, like.
Plugin 'jiangmiao/auto-pairs'

" Ruby and Rails utilities. Tim Pope is God. God.
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'ngmy/vim-rubocop'

" Toggle comments.
Plugin 'tomtom/tcomment_vim'

" Show git diffs in the gutter.
Plugin 'airblade/vim-gitgutter'

" Tabbbing...
Plugin 'ervandew/supertab'

" Lightline
Plugin 'itchyny/lightline.vim'

" Syntax highlighting.
Plugin 'sheerun/vim-polyglot'

" HTML expansion.
Plugin 'mattn/emmet-vim'

call vundle#end()

filetype plugin indent on

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

" Only highlight keys when the appropriate key is depressed.
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Goyo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:goyo_width = 170
let g:goyo_height = 90
let g:goyo_linenr = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Bind CtrlP to <leader>
let g:ctrlp_map = '<leader>p'

" Permits us to change working directory in CtrlP while vim is open.
let g:ctrlp_working_path_mode = 0

" Enable hidden files, then later ignore stuff like git folders.
let g:ctrlp_dotfiles = 1

" Override default finder to make it respect .gitignore
let g:ctrlp_user_command = [
      \ '.git',
      \ 'cd %s && git ls-files . -co --exclude-standard',
      \ 'find %s -type f'
      \ ]

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ag/Ack/FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ackprg = 'ag --vimgrep'
let g:RootIgnoreAgignore = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:lightline = { 'colorscheme': 'jellybeans' }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ale_lint_on_enter	= 1
