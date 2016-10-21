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
  hi SpellBad guifg=#000000 guibg=#e542f4 gui=underline
  hi TabLineFill guifg=#ffffff guibg=#1d1f21 gui=underline
  hi TabLineSel guifg=#1d1f21 guibg=#ffffff
  let g:lightline = { 'colorscheme': 'hybrid' }
  let g:lightline_hybrid_style = 'plain'
  let g:airline_theme = 'lucius'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" happy_hacking Patch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:happy_hacking_patch()
  call s:gitgutter_reset()
  let g:lightline = { 'colorscheme': 'hybrid' }
  let g:lightline_hybrid_style = 'plain'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tender Patch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:tender_patch()
  call s:gitgutter_reset()
  let g:tender_lightline = 1
  let g:tender_airline = 1
  let g:airline_theme = 'tender'
  hi Visual cterm=bold ctermbg=241
  hi Search ctermbg=185 ctermfg=232
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme Autocmd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd! ColorScheme tendercontrast call s:tender_patch()
autocmd! ColorScheme colorsbox-stnight call s:colorsbox_patch()
autocmd! ColorScheme happy_hacking call s:happy_hacking_patch()
