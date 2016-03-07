""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Core Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable audible bells.
set noerrorbells visualbell

" Font family and size.
set guifont=Source\ Code\ Pro:h12

" 1. Hide scrollbars.
" 2. Use vim tabbar.
" 3. Use vim-style dialogues.
set guioptions-=rlLRec

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('gui_running')
  function! Colorsbox()
    colors colorsbox-stnight

    " Tabs.
    hi TabLineFill guifg=White guibg=#1d1f21
    hi TabLineSel guifg=#1d1f21 guibg=White

    " For GitGutter.
    hi clear SignColumn
    hi GitGutterAdd ctermfg=green
    hi GitGutterDelete ctermfg=red
    hi GitGutterChange ctermfg=yellow
    hi GitGutterChangeDelete ctermfg=yellow

    " Airline statusbase theme.
    " See: https://github.com/vim-airline/vim-airline/wiki/Screenshots
    :AirlineTheme base16
  endfunction

  call Colorsbox()
endif
