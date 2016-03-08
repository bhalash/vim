""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Core Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable audible bells.
set noerrorbells visualbell

" Font family and size.
set guifont=Source\ Code\ Pro:h12

" 1. Hide scrollbars (LlRr).
" 2. Use vim tabbar (e).
set guioptions-=r
set guioptions-=l
set guioptions-=e

" 1. Use vim-style dialogues (c).
set guioptions=c

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('gui_running')
  function! Colorsbox()
    " colorsbox colourscheme.
    colors colorsbox-stnight

    call ResetGG()

    " Tweaks.
    hi TabLineFill guifg=White guibg=#1d1f21
    hi TabLineSel guifg=#1d1f21 guibg=White

    " Airline statusbase theme.
    " See: https://github.com/vim-airline/vim-airline/wiki/Screenshots
    :AirlineTheme base16
  endfunction

  call Colorsbox()
endif
