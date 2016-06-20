""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
" Tender Patch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:tender_patch()
  call s:gitgutter_reset()
  let g:tender_lightline = 1
  let g:lightline = { 'colorscheme': 'tender' }
  hi Visual cterm=bold ctermbg=241
  hi Search ctermbg=185 ctermfg=232
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme Autocmd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd! ColorScheme off call s:off_patch()
autocmd! ColorScheme tendercontrast call s:tender_patch()
autocmd! ColorScheme colorsbox-stnight call s:colorsbox_patch()
