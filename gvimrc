""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Core Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('gui_running')
  " Disable audible bells.
  set noerrorbells visualbell

  " Theme.
  colors sprinkles
  set background=light
  
  " Sprinkles underlines the current line. Looks ugly. 
  hi CursorLine gui=none

  " Remove vertical spacing between lines.
  set lsp=0
endif

" Font family and size.
set guifont=Source\ Code\ Pro:h12

" Hide the scrollbars.
set guioptions-=R
set guioptions-=L
