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
" vim-easytags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tags+=~/.vim/tags
let g:easytags_file = '~/.vim/tags'
let g:easytags_dynamic_files = 2
let g:easytags_async = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1

nnoremap <silent><leader>n :lnext<CR>
nnoremap <silent><leader>b :lprevious<CR>
nnoremap <silent><leader>j :SyntasticCheck \| :Errors<CR>

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
