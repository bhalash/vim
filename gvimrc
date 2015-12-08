""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Core Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('gui_running')
  " Disable audible bells.
  set noerrorbells visualbell

  " Theme.
  set background=light
  colors sprinkles

  " Remove vertical spacing between lines.
  set lsp=0
endif

" Font family and size.
set guifont=Source\ Code\ Pro:h12

" Hide the scrollbars.
set guioptions-=r
set guioptions-=l
