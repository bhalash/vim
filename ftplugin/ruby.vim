" Ruby tabstops.
setlocal expandtab ts=2 sw=2 sts=2

" Helps with syntax highlighting performance in certain files.
" See: https://stackoverflow.com/questions/22949067/
" See: https://stackoverflow.com/questions/16902317/
set re=1

" May boost performance when operating under rbenv.
let g:ruby_path = system('echo $HOME/.rbenv/shims')

" Insert dated FIXME notice.
" nmap <leader>fm :exe ':normal O# FIXME ' . strftime('%Y-%m-%d') . ':  '<CR>i

nmap <leader>fm O# FIXME<space>
nmap <leader>fd I# FIXME DEPRECATED<space><esc>

if has("autocmd")
  " Assists with supertab functioning.
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby let g:rubycomplete_buffer_loading=1
  autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif
