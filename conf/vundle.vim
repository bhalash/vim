""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Init
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  " Colours for terminal vim.
  Plugin 'jacoborus/tender.vim'

  " Colours for gvim/MacVim.
  Plugin 'mkarmona/colorsbox'

  " Provide additional text targets for di/a<char>:
  " , . ; : + - = ~ _ * # / | \ & $
  Plugin 'wellle/targets.vim'

  " Provide motion keyed to gs<motion> to sort stuff.
  Plugin 'christoomey/vim-sort-motion'

  " Metric tracking.
  Plugin 'wakatime/vim-wakatime'

  " Better search highlighting.
  Plugin 'timakro/vim-searchant'

  " Better FfTt action.
  Plugin 'unblevable/quick-scope'

  " Auto CD to project root.
  Plugin 'airblade/vim-rooter'

  " Vundle.
  Plugin 'VundleVim/Vundle.vim'

  " Quickly change wrapping characters with cs<char>.
  Plugin 'tpope/vim-surround'

  " Supertab.
  Plugin 'ervandew/supertab'

  " Authoring.
  Plugin 'junegunn/goyo.vim'
  Plugin 'Shougo/unite.vim'
  Plugin 'rhysd/unite-redpen.vim'

  " Quickly search for and open files in the current buffer, new split or tab.
  Plugin 'ctrlpvim/ctrlp.vim'

  " CTAGS.
  Plugin 'szw/vim-tags'

  " Ruby and Rails utilities. Tim Pope is God.
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-endwise'
  Plugin 'ngmy/vim-rubocop'

  " Toggle comments.
  Plugin 'tomtom/tcomment_vim'

  " Diff git files live.
  Plugin 'airblade/vim-gitgutter'

  " Nicer welcome screen.
  Plugin 'mhinz/vim-startify'

  " Lightline
  Plugin 'itchyny/lightline.vim'

  " Generate HTML boilerplate.
  " http://docs.emmet.io/cheat-sheet/
  Plugin 'mattn/emmet-vim'

  " Syntax highlighting.
  Plugin 'HerringtonDarkholme/yats.vim'
  Plugin 'cakebaker/scss-syntax.vim'
  Plugin 'clones/vim-zsh'
  Plugin 'elzr/vim-json'
  Plugin 'evanmiller/nginx-vim-syntax'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'moll/vim-node'
  Plugin 'noprompt/vim-yardoc'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'slim-template/vim-slim'
call vundle#end()

filetype plugin indent on
