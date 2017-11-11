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
" Colorsbox
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:colorsbox_patch()
  call s:gitgutter_reset()
  hi SpellBad gui=underline,bold guifg=#ff6a6a
  hi TabLineFill guifg=#ffffff guibg=#1d1f21 gui=underline
  hi TabLineSel guifg=#1d1f21 guibg=#ffffff
  let g:airline_theme = 'lucius'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set Preferred Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup themes
  autocmd! ColorScheme colorsbox-stnight call s:colorsbox_patch()
  colorscheme colorsbox-stnight
augroup END
