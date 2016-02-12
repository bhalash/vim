setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

" Helps with syntax highlighting performance in certain files.
" See: https://stackoverflow.com/questions/22949067/
" See: https://stackoverflow.com/questions/16902317/
set re=1
set foldmethod=syntax

if has("autocmd")
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby let g:rubycomplete_buffer_loading=1
  autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif
